Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F527282E1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719951923; cv=none; b=YFKOY00yhlElNX2tPcj6iEkkiOh2cO4KMpf+II1B8UmMIkyu3K2T61J21lKCpidTpWLmQ3t0Z48u4Fe46Ve9FoEoB69lE0RahX9XEKoJU4lsdmogkGjMs94luNZbJFvPVTTGoLdJjZzgqjYREhOck95zmXV3Z4UG7hS/x0aqrTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719951923; c=relaxed/simple;
	bh=D2UV6MmW96vJ3u7eLv6m1jx17v6hNdNrFAKd1i0j268=;
	h=To:Subject:From:Message-Id:Date; b=ugxHQEkgLwYv0Y5X9o6DVI29T0327D5LZAE2GmgJl3KGGII748kdNSJzzmKSJk4o6+AeEU2UpsviQDGKpTTRyV+MBOvhREqd4hXSPvNRKuovpgspVqv1tNU/SG3n1yBOs6A2Mc5zMLPgq8gD56frIfsPqWaCr0PktRwD5EKYWvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKhm8QQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKhm8QQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3727C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719951922;
	bh=D2UV6MmW96vJ3u7eLv6m1jx17v6hNdNrFAKd1i0j268=;
	h=To:Subject:From:Date:From;
	b=UKhm8QQfSGa4JxwuNh99vjMsSYpjC3InAgs8f7eidVcWLe1SfFOLxEBWb92kIBhQ0
	 nstpvu9SjWLVqUlBotN+gjvde/Ae/Vn69KIljOArdTAMFtHefDBGqBbAOOZR+9JKYe
	 wO2NTxhpMUIIApUDDzOZjwVm98mnaEfY5CAQ1h7HyIIRj3XLTVVAe9SeQUHVECCeJY
	 npmI2J25E/a4BFoZciYuh5LX9PQzS1CRWSHYynQnv0gvOKJBCoWodC5wAuvAKc89ty
	 mSELR5BbUY4vXwPgycSUnYN0bQC8h5t7qmUpTmK8nOSKmOLnk3oAVK9+YpyvF1l5Cu
	 12h1fZewJy0PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD452C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995192276.4218.2823243686458477368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97da9c8215da2126e6b11a8a94a1c781075b2a6e5db0644c52fe511f08b01343
Date: Tue, 02 Jul 2024 20:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719951922
