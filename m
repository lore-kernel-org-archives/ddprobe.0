Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4405770830
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787202634; cv=none; b=PgRpkDJ1mv2v5+UW76/KLnCr2CgUx9v3cVIj6qg+1gT3b0g8+6AazVkxdGGOSNTxpgINngBxatVLrlrBffSOtphjjHwHY6P2tHXCP5m1p6X/Ed4FDEwbs3PmnD8drE5kGfasBVcBQmlGrngaGkFI7hWF21J6rfMe3aHEd7kH8b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787202634; c=relaxed/simple;
	bh=HHb2tBeX88AneU88e++5OnGQnbIfRu02KRvC68gVTC4=;
	h=To:Subject:From:Message-Id:Date; b=n+/yye+qnWjrzzHLhnoqXOzZX0iibJlr7XseVLS/jO14KkLOdbz6NUfdFgJRuHl8ho4heOT2qMyVi6s7VP6SJ6FrA3t/8Dm0C4+hiyX6PS6eFM1lOISZS+F2CP2tfycmGh+g75DoLBLnEzBeZgnEasWZ9o+LuR+SOOjYpDsQBbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcZbCP0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcZbCP0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAD2C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787202633;
	bh=HHb2tBeX88AneU88e++5OnGQnbIfRu02KRvC68gVTC4=;
	h=To:Subject:From:Date:From;
	b=FcZbCP0Lj8qGNGEnstbUJHPFtpxbyZxW25VIQ2F8Wm+nVUJu+nN2Mz0X9TH/ew6gc
	 w86VycF++XHzAFttKHqQiTCMgkluJAlRg9xPawzHWck7uRXSZrJ/rM9wf8rKDyySB/
	 BhEwQ/II+OgKjUpEVb3ESrcDTrrl7BPP0AnoyANqmjdQuM/B1vIHe4pb7XdDfmADWk
	 YOMGfWf6eRjRVr1PEsoyq1zZ325Vy9RWKjcyP39GOmQZ4G53HEungdCt2EOqxOXlyn
	 bWpt2Dc/E0hgCEQ6GRAldWd5ZGRPlOyA/ey2Mghncx6zAUVb3kbBp3+LmtGh0bDjp9
	 Q6HLeJNbGRyUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9F4C5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720263369.8982.5915456036582688642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2a89e99a38a83aa68eb1b0eb2fab9f2b70de37cd1e5e704ee5123919659d0f
Date: Thu, 20 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787202633
