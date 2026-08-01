Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE9A23ABBF
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785619834; cv=none; b=aNvfTO3raFaYbAbWhhwHX2/nVJYQEyXC/rkrhvKuatJ1N1Enrjf0RGgZYbv8dEmBV3uoYy3N7SZacwI3vIufrCWu2CuG9RXmlfurgGLk1PFZTPOBTISIaPuMCCCVty1/SkMYJT64CzSaItfTadmYtlyGDF7GIY3CwluDF1ZGyaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785619834; c=relaxed/simple;
	bh=cH7FdxUG07VL/WQgyNk8qPhPYMp2ZoYBY7IyielOMgQ=;
	h=To:Subject:From:Message-Id:Date; b=gToylmF1ZBaBUtcfg/wIoxOO9sVrkkOmdkV/zLyU7Ik8XzM67IHudVEU7C5qbT1XZUuPOroKzZKpfOEDE7qXVBJrNw3jHqhR1658NTXraKIUxKqemq6m7+QPsZiKMTzX6I50fu87jvUk/DmcRFHnktV7qN8wWMD7YUbtwEBuR+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omNroJyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omNroJyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A95C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785619833;
	bh=cH7FdxUG07VL/WQgyNk8qPhPYMp2ZoYBY7IyielOMgQ=;
	h=To:Subject:From:Date:From;
	b=omNroJyil974Mwwgl2QH/mehb0qChoBGXpzOJk3y4YHzz+75V8dPDmHnsyKPXx/qW
	 1Cwh/MCV5q5/6vvjp8x677NKe9xCoB6kRQIvlxe6Ib3Bp0M8SvRbQpPSJsoRlldCq7
	 7mhK1PqLgA9Sleo5Vo4Qa2sR0LkGWP8RC55F+Nm8/KWOlz4uaBa9X3B1j7APiwUxl5
	 uBrlkpFbKsVZ4hlOyGPCXg+Gt7YXkfK8CLt5xTX3PahNzk3gVS+FqnagFh6GRrgc7b
	 6IManxaNMLdBCwxhF+Gax1FxA39KCEtrB2n/1UiMTaa2+RUyWsLfT+zdHdAEeu0Zoc
	 tQazer8frM/Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8B4C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561983368.3189.15005948647762319605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afed80ccbbf3af802050bf88df157e355e1823e10b1573c0af1cfba12b317a54
Date: Sat, 01 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785619833
