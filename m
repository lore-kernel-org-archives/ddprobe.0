Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705C9361DDA
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779308434; cv=none; b=AwIcSo/Aci1Gya1Vqc3+w0aQ6OUk7R4jqcZ8Focp6IrFzWHsJMcIHaGBVNIrJI0ypbBwKLwg5ETSNOojlTJ4Gc8lDuZoix84JsXKGSmRlRR12y6z4emt8326nrxWwvN1P63kErCqSlGaL0xbBlRGpVeJc+risiR/b3Gt68e5rhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779308434; c=relaxed/simple;
	bh=zE0wzdPeFp1nh4MOw0KQ3V4k/6MKGrHWfltXxElkj/U=;
	h=To:Subject:From:Message-Id:Date; b=EKYRpDupuofYkwv6aGjNKbJtmAXodGevhG9dWTCdp3ha0vwb8iYmEY/tkNOc4/R3VKRv0R/VBefxpsvbJZEUuGiqRDrZ+s6RYnOT42EpkpydbpptaEDnRBaCwoix3nyB2lrXO+4MI/UhUho58Jea+odNaoL8cR5F4nDnInvkDiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9qg/Gzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9qg/Gzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25F9C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779308433;
	bh=zE0wzdPeFp1nh4MOw0KQ3V4k/6MKGrHWfltXxElkj/U=;
	h=To:Subject:From:Date:From;
	b=A9qg/GzkuJfJirozCIIjtHwQKF+RZ2Dtn0Hjt0GSr2rZj8X3WDdzksCzii91xbvwx
	 sBkBM/1Ih7MccbFjTejk+w95Mj3mGlmY3ZFAbYC7agPvW4t/GbPIkhEGC2w+WCzLaY
	 NsgHvDiE+IaSEs2xqlHEan6CFJrK7QZtqhcHmIwv8cbwt2mNCao1JpNCP6rtz/iq1X
	 9gG7ksAHLXL/1cqFstNU6a6Cn8BF8Jwkk56Ow3WNcL9srXJQ26o3roTkLCTyR/fJVN
	 szoWjJ/kaf3xhheFixCiJcnqs7QMAh3QKGcbBKmmoiKEAiCdSXoAtGbniHJX87PUrE
	 UtybXTZT9jEFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA44CCD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930843373.31340.1889207232623040994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9c72f8a1c0b50775a002dd776d40713922db31d375dc60f5767ea8661d3039
Date: Wed, 20 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779308433
