Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA52274FF9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747421394; cv=none; b=g6+K+2iZ+Rpq9IFUi8FHbj1TVQkJJDdzxFuIsscAKY8y9Bo43bn7yX6UUI3vSyih+NCJTVQBIRnEQ2WtxuLsxy5c8/bRSq1c0tFyx/CavsE+NOZNOOFJDsRuTsBV+xYHclZKUmoNujs7eSY3JoxCwmDnVPeE1TwqjpJSDjks1Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747421394; c=relaxed/simple;
	bh=OfjHHkDd6TZ7Sk+aINBlchDOVoz+DFFpB1tbymZWgFU=;
	h=To:Subject:From:Message-Id:Date; b=hpFopcx52P3N9xb+nQ0z+dVXG445BQTIdStEmqskPAXE3hjLjoJZqH6BHrE37E6FkIVWHUlF/zndOtw57nvv9KDNqLgzhPrlFy0+zHdma70Neib7jpG9wQdHE+EBFlgetqcCI5XL1NEE6fu8tkbTUAjFg8UzGbG3WKHNvPnAPUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OM1MLJDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OM1MLJDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A441CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747421393;
	bh=OfjHHkDd6TZ7Sk+aINBlchDOVoz+DFFpB1tbymZWgFU=;
	h=To:Subject:From:Date:From;
	b=OM1MLJDC/L5w6o+OJsERvmyPgp8SlOcstHQGnohADChRqIJ2iL0QcbpJaf8yHF4PC
	 DtS6kWc/WQ+yerqPWw0e9ks1/I56YpV3VDHAE7AzL6XkHaAQkVxJ+8W3pSzPimDNi1
	 Laefo6Z5FLflu3KQGVXfprjzEz37q1olUzs4f4vnkO/BK5XHgVioGy6MAF2iRocf1W
	 CjB6rLY4m8Zxj9+Fg0Mb+M0n+R8SE3dpH1u6u/pGAH95cvBLxxvuhKnWDD3yKW6UZc
	 QVyJY84adebQK0UHJ50/tGAtoFY8J2qJzJLVlsu88GLMNo7ZKZrPEzqteDU0dQR8kp
	 MKyp0fEeQx8Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90635C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174742139358.7240.14164913490994334777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f17af2b7bacfaa9bd6480c4ad747ec74e91e208faf04c1a63fb2cfcedc247c
Date: Fri, 16 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747421393
