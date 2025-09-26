Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238CF231858
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758901794; cv=none; b=tWUMwSsV1rystHDf3dE4XdHAsu43a1DZWx1AAPT12+RSPmbrflRvpJA605TLM0eOZO/dCzJUVBew7C7BAF2L0qGUsWONnmxh/o1uopBVt2ohBzVLOcl1ku+PhXGQQFEZkxjb5FqtThuL4Zy6qBeShR9RTphCuzj0Xun6RPM2B6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758901794; c=relaxed/simple;
	bh=lNaHTV7ZyqC7NJwWpPN9UeAPSIBQhiAYH4za38i8aK4=;
	h=To:Subject:From:Message-Id:Date; b=MZghzaGKaR5bxtR74/aOmmCvTNEV+dveYYLiPR0vwerTo6Ktu8/656vK4W4/hucAnHqjF0bMkgkfOZlH5Jy8VodSzyLqYVyEUSB9JVF/I1LFNWeOMC2maesv2/rz4epS89rPJhhkFHIeFqY/U6kb+E/rbVpTdHBxpzJ71nbdssk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSPU6fz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSPU6fz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9381C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758901793;
	bh=lNaHTV7ZyqC7NJwWpPN9UeAPSIBQhiAYH4za38i8aK4=;
	h=To:Subject:From:Date:From;
	b=PSPU6fz+z2ZuGynD0s7+3E/uHrc5H3R+rQ3tqRpXpXDtPlaKxNivu0RBDsog3DYKN
	 L4kiCFKreYu7+FRnHKplxMyZsCxI0TlLQXCtp+2pKIQ/cO2m8dbqBmE0f+TOoa6yym
	 qbLueKrVsTizX6PtpW2g5uBX1hU+aane+oJlbpGO+WgjFomGW1hGKA/qbX/XOuskQa
	 lW660s13Z5fMmFkYk+7fuvnM2S7uAu4xgIloJWNRaVILgJqdb6MfR2PrLlp4r+bvQW
	 BUeGhK4D/F8EcUawABUvlQ3+iNYUny7BeATBWhTX5P7T8FhIwGhf8rBrTt/4cKbJhs
	 dIWWZFP4Nh7xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967BECAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890179360.19351.15732799030024388740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802bd73ac978ab8c9f016cfaf53419bd2444c81969aba1f30f4853f051569757
Date: Fri, 26 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758901793
