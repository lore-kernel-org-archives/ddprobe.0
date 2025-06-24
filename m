Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1929524887E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750748394; cv=none; b=RXX/lMvmozpPnPaLPSoGf5hPFjlLKvwJginKX642kQdsiV/QDi00hy1UWAk1Vn4r2y3Z6W3gQtKc2Uec/TkpE2GONTkvZZzZb2kKp382iPyeR8Drn+96mSrioUi4GNhmlbLMKsYIIJ+uNh3vLAt5lprehLAhtzl3MhYQBL8XWQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750748394; c=relaxed/simple;
	bh=kSkhPLj37+EPoeTU9aT1Z+dQwDidRYT2krfgn/0HDxQ=;
	h=To:Subject:From:Message-Id:Date; b=UtOwYhJ+0QxWvj6Pu+CxmhxKYjybYlZkdzMEiyAdTLV/vXY+rTVJePaGw5F4pGNoa07zGeezrjef8/Ag4EB7GEOBzLQXPKHr3ovfGm+7oBhfc9CrrudFB3Uo+iwZkgmTu8/6pr82j7/cfFGOG0VeNtXxNE5YM1f8aKpJT0/1Kxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+k6Kb5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+k6Kb5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3A2C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750748393;
	bh=kSkhPLj37+EPoeTU9aT1Z+dQwDidRYT2krfgn/0HDxQ=;
	h=To:Subject:From:Date:From;
	b=k+k6Kb5rLAup1DeQffGyNWDGxNkymNh80mk2qpLyq0bfuG1s5BYeHS3xr6FS9Sp1D
	 cf5FD/N3FghFEhscb26sQu6oPgYFl1SFDNuMN1wKsNC9mcPsjIrnALzh9jN0Y5zz0k
	 iSYaWySuFvkK+JaOKxLyPzmJN+Onx8UYRMzysArPm8pq5zFScbN7e71p039i2BOrhV
	 s7MnKkNNONGzwMNMvSlQJkthc7vNSjeVWr/P7QXPOmkMUaNb8xmQ0/BJx3VIxJG3IN
	 BtMkMo39uV7PdXd3vy6CRRaNuaOE06BufppPfdIOHGueUF0zCQgNOWZ3bo87nUS50S
	 AibAnq14JGCqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F82BC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074839357.6258.4170496435613461326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1959596ae1d500d372af642751209492dd9b8a5b62691704989c7d7b43dd0f
Date: Tue, 24 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750748393
