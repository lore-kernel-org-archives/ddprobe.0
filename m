Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111D71DDA18
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775300134; cv=none; b=IunEpciCJBOX3+2/mYOrzuzlOjAV4MxImxJ1z29+qPUWWvvZl4EORT367jC4X/RKqD9zg7cMQjoKMBvoyeSv71s8iL4EzGADyMU1MXmE+E8yuqswA1WGfiDTu4t6yYu7bhIdyuxlRVfHQbu5BVnCMF1Vb6cpl/6pD+t45+bT2Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775300134; c=relaxed/simple;
	bh=MNNjlhSmVKl1TferHO4TFig8hO8t/Lc7egxkIGLIygw=;
	h=To:Subject:From:Message-Id:Date; b=GaOOIEm7kWmNLXED+U8CGx1LqmKIo4xwY1HA4gifmAyfqIwjMBEPxhGdfC6cIbdGA5uSeSsadoxRZ+Nf+oZg6dtF+K9IYpL3u9+OsVK9EoHU/geDIs13R5ZZ83VhFbwe4pxKP1RhI6tnMpFk98jPr0Cg/HiQFvkbZE+m76VYxMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIpx3X4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIpx3X4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAECCC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775300133;
	bh=MNNjlhSmVKl1TferHO4TFig8hO8t/Lc7egxkIGLIygw=;
	h=To:Subject:From:Date:From;
	b=qIpx3X4Wx9sLSX6Uuhi+mi3yQ6ZVEnREFioIcxoguNPQd0URFWd3Pht4E3s3x1dHV
	 kJc9UythFUXnjNUtBQuo+qNs+j40AOTSPRNoNDgZwImka/0yiZXvUZNLM3pEewg6Gd
	 XFPEKip4OMRA+XCSNY5zyT4OUrM+xqKnWGrfAvxm47S5BTUnylQ0wYdpvN5Yc8PU6Z
	 iTWeSDbYNztBOVDhgyhPewrCOmo+j/XK7MxbVl+5GxMUQPURGsCDnjTCyIk58o7B4M
	 Re+SSLCQLDbC21M+KEb3U3rb+rPZ26js9GXFDHP4x90GhG+YVrlbfLRQuH7L7875EO
	 dsMvsBc8QD0Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3E6E88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530013369.24359.6123525813551077738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3670278d466ecd2d68360991221e792c9f686f71d0f268a6d5d6f24b1a0ff719
Date: Sat, 04 Apr 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775300133
