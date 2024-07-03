Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6AB1A28C
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719998123; cv=none; b=aLR2WTVHZxbafuwqZw35P5v9KWbmTQhi+Dm76Ro5PBcCvGi6OvRbCrgJCyHemUlL1AxY8i0k2cih/rLVMi/RY5pRKp732S8c5LrOkNw8fhWCr0sqY2TapFpLGN/8J4ldT85s10gGFQQMrflmFcmimDSoJTNafbCVcZB4svO6m8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719998123; c=relaxed/simple;
	bh=/YXMuFXyP4IQRXNr7+J27rVeKcLO867gY7GYGyREuf8=;
	h=To:Subject:From:Message-Id:Date; b=dysZ3xyvI7aHzjolS8gCaM4ERx6CllSgWWIohqQAWSDLTAd5badmpLd38pyEv4tc1WR1DzvW8V9lHPGW8jRtlWWm9biffO/ez5x4Hgm0Mi0poRQ/QXdvTktOqVD3uUvu4ascKShzoHM9wZMwf596NTuWO3U2gQRSx586/8mhs0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRW7Qmos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRW7Qmos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9870C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719998122;
	bh=/YXMuFXyP4IQRXNr7+J27rVeKcLO867gY7GYGyREuf8=;
	h=To:Subject:From:Date:From;
	b=DRW7QmosDZM+msI17616TcWCcM8KvnXrZcNQwOfj87+lVrR8ibc1VGkrPQkL7BMtT
	 qqENY3tEAkfdA4zZhXCd/EL27E4fUe2ZeVkYAO14E18fs9+Zr+2cFs5ynozMQ7s11T
	 U/a+EPzV10kRMFUH+kflT7EZxXTnkK8DaIHL95g4UH4QMouy5Re/RgjIZN4cFm+Spn
	 qRuWZlYRkuLCVD2TdTNOYuKhlqvQi0NBdED5mZtzZRePQo1hhewS2+Fv2LBe61lSaV
	 OhAXf+CBZOEPxhEFu10G6jsZ/0gFaYNkYRv7EamCRxu/TYeHrvNhg4PKZnGKxCgG3Y
	 tlDHWEAzuX9fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FFAC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 09:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171999812278.17363.7815550998858005285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71872859b42d7c07fb9bfe778de7e0ccad00dbbd89b1d14ec1fcb906db62b4af
Date: Wed, 03 Jul 2024 09:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719998122
