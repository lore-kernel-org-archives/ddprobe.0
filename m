Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699053905E4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786869034; cv=none; b=uHaoY12U3kCGJsMGAL+/As7J9qFER97zW3mWby6DM+DtQrlVzh17R1VX37AeQhZGWBQotkDW1VjcANs3KRBjNpCPq9vDOssAKWLtjKcb7PAGp3E7GTKtYnsn8v3JqWYQR5O9NnfEdWh+ymuNZJlBHC2i1mtMC6c0VMMX9Q1b6Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786869034; c=relaxed/simple;
	bh=Uo1F2Ldm0pC97hagvRZo76M5mWJHPdmozPgOHSpOgsE=;
	h=To:Subject:From:Message-Id:Date; b=K+OX9cC16FDPeKy4K4OKm3HKFBIOJgmY6gZpUrr9unX5LY5yLjrE4gpwalPeXar8OF+K3wIGo2XfT0tkOsrvmpTHs+TaFo7BL5WE44I1jBgClmcVrZDtvtQ7mukSzNhzPqJ3NgDmQUYm8yhIqQX1qio7DwVw3DJM6rhoLhn5AZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYiDkChG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYiDkChG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE7BC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786869033;
	bh=Uo1F2Ldm0pC97hagvRZo76M5mWJHPdmozPgOHSpOgsE=;
	h=To:Subject:From:Date:From;
	b=VYiDkChGt5KGGEd+/P2YZiCF2BOlOKgDSHEEhBBDdV9LYNSFLNAj3OiXKQAhymHv9
	 iMdBIZYQqAn/qiJBfHfNlvt/CJTPX2fihcIuwlnPi6WYX3Lc82R47WauxdKEShHVr0
	 Y3FIMdyPeReVdA42wI3pXTi0ilSWTvjBUa1kvEywZaioIG3nm+XcnWwUVF9ggxSexa
	 kQeu0SXkvLFm1n24B+qph3ZGCE2gzbIhhmyePM+04iIgQoud4xA5p8u4+EkGG7CHs/
	 tZ0HmxwahfRc0TLM9ItG2NFKcBitW0TGXr/wYfFUU8PPtt8Z56B07xWBRhBmPwxfFk
	 nFn6K2CeyIOuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D79C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686903368.5675.14910331306848155290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a4847fcd0dc3909d2a48382a4bc4cc57ba8253ebc5b5edb777e76ab6d351c3
Date: Sun, 16 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786869033
