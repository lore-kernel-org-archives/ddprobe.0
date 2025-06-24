Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9203D2153C1
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750775394; cv=none; b=p5Pra+owBfmo4cHlNT/z/2/I0PYw8EvLc8BHdHC8FqkRVF708Ib1nqL0zA6We9Vggaog4JY1DFNeziz0KRIK5PzhVyOfu7xd+8IUKqV2G5Y2UTH8diXIdyiF3CbC4nV6R+Y+Lu2qf1SwGRexrRk7I7IeTRckPB2mZfM4rgQnh4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750775394; c=relaxed/simple;
	bh=eKRizF7tfD/O7BICGUwSTvAemZjwdh4+neggvFO3oWE=;
	h=To:Subject:From:Message-Id:Date; b=q44dfcKXeT5W2xev/r2oRl8Sun3zz4U25SZ0Kn3lXQIvy1bF9PixfdJrfqlrAK9q673GZrkMSMP6Z+FtHurPdHBPvnoC+Nb0RVa3gp3nhtjAIJ6HLZ1SsKs8cH3S9KkEsjAPPAbKRjO6EcMYIFz/bGB1nS5+yT7sAVBEKqInkDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1Eem7nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1Eem7nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750775393;
	bh=eKRizF7tfD/O7BICGUwSTvAemZjwdh4+neggvFO3oWE=;
	h=To:Subject:From:Date:From;
	b=q1Eem7nxgkCCnMlHAx9OsLG5lvMlhqCiX7vRr3kjIlU+xCuqcEY89uFdfvvt5whnm
	 x4y8OWobx/Kd6nKsg9TXojJ+xmclhOr1/L7flwRyDBxguCQ76BjD2lLo+vBHaaKE+f
	 Eck86Sp5vmdJyFANKaMy14hAKmpY6itjEisNxcst2E2bFn+HhZaHFcqC3FLtOpE5vd
	 KKvtpzFP3n/XmQsEorCf1ziz2ap+m2vW+IHHytrs8IVwa4H5dpbNgjQMgSjC9/dDkn
	 zvuEtKp63zrNDOtsP1Atm35hsXm7mzoGRJRnpFeBiub+BleoXKb0fh/ZznkNGmKVsZ
	 ktSCVIv9Jm42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C38C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077539358.3844.231035443247777678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e91f34dd3d06b386743d09b7d722c62020402d38e1457c72e65bdd5d8c20b4
Date: Tue, 24 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750775393
