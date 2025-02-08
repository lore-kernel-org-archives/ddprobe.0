Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC31248190
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739032554; cv=none; b=jpvviSbz1nVI+r7+3vrVMRluBDBQxfNpPe9+Mc69YTIzuTtbcR/iD75w8Lsj4BO2JAlAL8brRMrzjMcq0RS+eLXQE7ejpcSvfeE6SElVdyeq2X49/E0NR/fouqGF3HZ9DDOLzsMc4mGPUuGe0sJW4I9BA+iiUMHB7Ib6ITt8/+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739032554; c=relaxed/simple;
	bh=qkEmFvzn1smx9fNvWXxqQjKtgAOT94qQjVn4ih+ZFrg=;
	h=To:Subject:From:Message-Id:Date; b=AQzLoEJ/N4y++2u86nsO2TcBcMwee2EI/9TciGJ+dJwF8VLMLIKBwEWDJA/CkGBmt8rzxyzETPiJVxP94MOu25BEb5DcOKz/9KDvwbCxa8VUTE2/LK2U0HMfZLS6095FMDWfBl9cJJ5CeytWub4Rl0V7pEhkNsTVKcn/0yJGeHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbUPFljM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbUPFljM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE33C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739032553;
	bh=qkEmFvzn1smx9fNvWXxqQjKtgAOT94qQjVn4ih+ZFrg=;
	h=To:Subject:From:Date:From;
	b=ZbUPFljMTa527xsKAGCYlyJIpWPvVpH0aekXTrHlnTrbtf8d3AaCTiIfwiC5rRBT8
	 HC8SAy4xBQ/ejAd+dsrmrtipCSo1bXmRyEzAujrI2WxAwPb2E+FGqU8/lZ4RCUSxp2
	 UUcqxo0jZSRFmIUV+Vs0/rJIuoTidv5VWT7PQPcoFGZv2X5yeLeTFvPCjN+3gelo3k
	 LSR0SR8ySvyPYHNuNPKAkI1JzFU8tifi1JVhmIfGZtoVYo7PmqIpb1p6XAvu2THRZZ
	 TjV8kUE63PEIXyxFrTFis8lfLq471KZV+27UT5iVL7vmh3M+iVEP1+nY1ip7Xg2tWi
	 Z5yoHiev+dXgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDBBC02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903255370.19037.4595483528638090130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916024b207618f78b974f8f87e987709d1494107075603a56ecd351a3775b082
Date: Sat, 08 Feb 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739032553
