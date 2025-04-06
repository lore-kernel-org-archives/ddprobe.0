Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F553219FC
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743929994; cv=none; b=A3L1/sHb/J+uDIBhKGWK1EETySIDKRViOZcfNtXJBvqXhsZ4+qkmmI/ZXA+41qJ9R4wFjHI5iq+XFYpAz4LLFEDBo42aS3OQbulZPp28vJzPmb7PDHIcv9EyJ2V5MaD2MGtgY+IORYXttjH9d2HRZVZaq9n3TGE17VymbxZz5+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743929994; c=relaxed/simple;
	bh=5qFs1jsWp+yzNW74GytBEAA6e+4n9AYMzbv/7D0N7kg=;
	h=To:Subject:From:Message-Id:Date; b=RWooqB10zfY9mpRHNolgdkvPsDNOVcMsL+v839yRI7F+FRBge3a3iljscxnUp2lBFFOVRkU45SSeZAXyLFTDp2kydIei4l55GtobWb5LtGR8w40ykd4G/hzT2CsryClaIRbwfGxHPkT/R6nyBJkZXoGniTWb3m3jCpkWTB5Jrug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOayXGwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOayXGwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D35C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743929993;
	bh=5qFs1jsWp+yzNW74GytBEAA6e+4n9AYMzbv/7D0N7kg=;
	h=To:Subject:From:Date:From;
	b=fOayXGwRnp3xslkVQlbQuZzZwHBKY8x6jYPAcHMOovqcow+F8OwcWSlqzpHPlol9J
	 H6Gr9NdCuwmm0tQYViiDg/Waa1nMNab9dsgNsIzjncjuK4DQZ3Hp4vWKTWskRlKr93
	 BpjjZAgjxQ0nDi9CO01UU1Yr3opQTKkU6SxIVEhoRbQPpN0gTaLPajBUCsxLUbc803
	 SkwO6uhnVyiFPmTTlefNVZ3xlxEhzFPlMyNk4DYsK+IZ9RNpy3qKhfNB/hIGU1lyr+
	 F+John05XmgSc+nQsHM3wAkzZenF3IXWFqypD/XXnNHTv124SV8B1RtVIR6DB8DnCa
	 dQTYVfVLX2/Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E45C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392999359.7359.10734446686991635989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5cd609939e2e75cecdba754fb9e864f6dcf5eebcc88e27c025176d54311c892
Date: Sun, 06 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743929993
