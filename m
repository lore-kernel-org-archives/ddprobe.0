Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCF618DB1E
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760891993; cv=none; b=dNCbsVRY9ybV+CtFmgQqTNLczfa1zvhatETBIpmyEUm1D0sTxruhTZhWzPLYXc0m+LHU697j7NwQ/qBPp6GGtFm0y84I81bW7FF9ocKMszvtPes3bVrx5L6NGlylp+pjfjIDz4gfaF30sTptU7l6BlYxI5pmYGXBLtERQ97Vlzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760891993; c=relaxed/simple;
	bh=hefYY5Aqe+du9zLnTcNg9i6UXovRynnaIx1I8AhBaWU=;
	h=To:Subject:From:Message-Id:Date; b=fjgRZpfuo/ZWonjxC2gXdleyg91bTKX12OnpR+gPWt3BOQIxzS1zCpTC9kQE/zVTrzxh06sbwOrlsZ+M+5HdOxnv8OoNKNEaa8E07gVsMuI77csNsRTv9j5lCXFPC6oWs4Veksqxpq9YwxXQpGmyWMIYV3X04PTIYMTy/7MNU9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ax6s+OX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ax6s+OX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5D5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760891993;
	bh=hefYY5Aqe+du9zLnTcNg9i6UXovRynnaIx1I8AhBaWU=;
	h=To:Subject:From:Date:From;
	b=Ax6s+OX7oWbdBGdkrtyEOoY57lP2hsj/2r4ekTu6dj6FYYwsg7P38Jd6fR6jjj4IJ
	 3qH4eMLu49qlaU5a6lJyuOAJZ93f7kCmqTkKcLvVnXjwX1MkUHW3DtTuRHrM/1zGHo
	 MTOd8NmsWG2XWMQOP5xXvqL1RQz8gC7b1UkiTbJD3vysANbbYKQlAM/AMQh6/K1uWg
	 Kvi34cp0tKoIB1ICNLfvfLC6488nldWB5LwhlYQvhENWgoymdBDMOFrV4jyRnH6kKU
	 5Ymmtm+Ft37n661yo/FDTj44dqUGjGcWQNPFqC2MgIisiCbw13bap33QuKGNJWaFyM
	 mxqCgjPfAmcEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A2CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089199358.22295.2041949352274078832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a97cb74d3304c1cc4960e4bd062baa731bf81d746bdfaef65455387465e66b9
Date: Sun, 19 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760891993
