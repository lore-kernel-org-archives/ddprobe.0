Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344771B4138
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783126714; cv=none; b=bbSdhZ4Z2etMDWMnqhi9o6/uGOy4NgrAb5xV6q8aHIuUMCeZyLOZ5yKaVDE0bX8WdojNl299SB2W1ItsFlHEDRSFeIgNZyp6+yLu1mkhgHfPS6S731Az1YcIqJao3RS6KwJagOWzMyi3Q3DlAnkCfpw8uPN5zLodiYa3K9thAps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783126714; c=relaxed/simple;
	bh=rcsdOUNDvK32eSQllQ9N+3i2BgqGtFt6sxEp1DSKF+E=;
	h=To:Subject:From:Message-Id:Date; b=tROBaqmSw/Z4Bm22sxDANfLpTBW1yqQgllRsGfToZOvVy7P10Gpui7kGylfpsguZGlPcHAOnCL3Gl/XK7uQqjmBpwb3FaUhYhWgcuiJhJlF1gB332QfGs8I1f4MIkL+9jjdGAg2I5YzoYTrKUf2HFHkWabh5NsT/GvftIryMIIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvoTmig9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvoTmig9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC76EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783126713;
	bh=rcsdOUNDvK32eSQllQ9N+3i2BgqGtFt6sxEp1DSKF+E=;
	h=To:Subject:From:Date:From;
	b=TvoTmig9aBry7ahy5jh2vj4Zpf7RBomGTtdjplaZWgQ5oFmoinoxnTYQTxH28flr+
	 VNe+eAs/Xt66s+PlHNmmkQC1Xw9utGG6Gn6vI5cbK+wWdhFdw/VVk5AJ9WUk6Inaz3
	 fjPp3GhxoLHhNws0EvRWrFJfuKk5U9/h780fRiGV0OJy1X/wC35qk9+YoQSQLfbsrj
	 uLyw47bkOnBoo9srokLBjViHkPe7a5Y7jdDDgBMBv+6srD5WGOmviPi/IuQ7ZWtxuU
	 E+6fDuATNL9UCeACQRektu8Ut2koL9lHLo8jBm5BCviKBZ2olMLH2Q6lfuPiCdhf0Q
	 BTJRkyJ34L+Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FFBC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312671368.12772.17672877469925886044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4bfaa8abd2f1855c582e7c499b0a261222d6e837eb94ff9b81d42de223745c
Date: Sat, 04 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783126713
