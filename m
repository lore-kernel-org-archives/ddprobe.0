Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292312D662D
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753886394; cv=none; b=gZ0mNTIlEUsN9vYnGkmLm5Abuj+fX/EIym/h9kw8hxEv1cTVpgMJ/ipTUzzp21qv3IKUyQWQ+bX4zXRYAB1l6R2Dr1C8umgN/QGOfB8U+3sogRnXachCYcH+S9/jmSPrN90TGK87sNi6Yym/371m6YCfVy2S0+hsL+mEhPYKF4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753886394; c=relaxed/simple;
	bh=ekGw4aSqakIRIgPZGr0nXfZ3LVAfzxu3a6Ehm2+zJB8=;
	h=To:Subject:From:Message-Id:Date; b=B4bhlr96EfGu8gRAPsRPsXJ6Bp/C0Ejkra+2SxK0m2w0u/U8UqA4Wkcp+b1LedX6QU62qW+A40MCv4tV8sCn+gFEeiuA2cBISmB04w2TQORRzlHIRvlbJG6OiBRxq3ZVyrszsXhB5rGPPsDxvIzMIaLMzOf8fvDVtdE/GXQVATk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdGiluG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdGiluG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A398FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753886393;
	bh=ekGw4aSqakIRIgPZGr0nXfZ3LVAfzxu3a6Ehm2+zJB8=;
	h=To:Subject:From:Date:From;
	b=kdGiluG/Do6nZtog0oiWCK3YmHv4GguCD7C5XKOaFYGips+rEimQT2RWJT5m+ko5A
	 kT55oF5YfRQpaz+56RyM13yG32Qict0V+AiJtygfvzLcAelv2Kg/Y7KhraWx45QCSj
	 bfoSk1wJNNaXwFhibJsHxUqv55NeM6tWKquQF4CV6MUISk3S7J3/TEMgkDpk4BMhvo
	 EnLcr86pYUGFyHl9pOrJl7biDPHr9Z/SwIYv2LO1TcKiZyzKD/SfYPeZ35UQhkELdX
	 eKNmiU6ftzc+Yw3N0NKmORC2N9aokhhKSN7Wfwds3A5lV2zeMEqQ95JX2BjtkV3kyw
	 a4UOdjnFRd16Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F8C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388639358.7754.3721885396281610907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f40a2504995f5a545ce32229193025ae396d981f0b18e46269e499e94b5442
Date: Wed, 30 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753886393
