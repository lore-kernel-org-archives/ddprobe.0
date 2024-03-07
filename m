Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 048CC41C60
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709845697; cv=none; b=h74J63Sb2T4BWXYLK39kJXJkOk5seeluecWdZcZ/Y4V0l1ksq3YaK+VolCUftXvM9UGhWq8Tol/DDd6xUxIRgC08o13sqwxSjyivZdJJYS4xDezKs8RCS8IwGFy3Wbo15j29I4tYUaHcESgiLh73efb2DrqYw4kPq3SyQAB04t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709845697; c=relaxed/simple;
	bh=WSuDGua3VlhiqWXOGytcm/hcuqxe72pK2xLfIj2JWaI=;
	h=To:Subject:From:Message-Id:Date; b=WPyTBYzpfT6hrXj11RYPsQHkL14GYwRlWSiRk2/wi4VMQyXpkIa1ryh2gU5uESX9hLYpAJmPY9+A39rbsKa0y7EyewSLwDym8JdS86zLqNy2PY0vwmRPrxlerX3V7+CjsTvlVBlW6xrFf0vJvT0ps8AUpOvm44clonLtEG+Y//4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHVDw5oZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHVDw5oZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80116C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709845696;
	bh=WSuDGua3VlhiqWXOGytcm/hcuqxe72pK2xLfIj2JWaI=;
	h=To:Subject:From:Date:From;
	b=UHVDw5oZ51DO38E5xOqmJRQsmO4NvvL/SHOxIDMXGmVcONwhIW1X4x5ptwjRhL/ku
	 +ioad8MwoM9t3qxG4yu77XMMf3r/jxzOH5SNYhbS3ZSL3Px0IEH28Gg2ruxFY+/IPL
	 wopJjNICoLXEiiFqBhwW9B7XKzftO5NOLY0+Kl3We2l3F2o+G4YYMV5+6HGljSzBxN
	 F0G7yccgspai831fmF546ya2sQ0vrLoDS24jBwcwDpSfyeYrD2N6XkRuzeH4RTP435
	 /nOQnZ16G/KXmxeOiPsmw5XQQjbGM5QNr3MB3dztjgf1jT1M57/B8iFGDB9CEIT7aq
	 Wk3XcrqCU83Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D957C54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170984569637.16286.3805019268656447059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b30d1c1c7740db6bc5a47c3b5f170dd44bc6ff93ba6d6752e39f56835379f63
Date: Thu, 07 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709845696
