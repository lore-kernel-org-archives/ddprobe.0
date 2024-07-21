Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3704400
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721584554; cv=none; b=FrpnRMf8lkmKwOcSvhqcMgjoEAYJlzi8oP8fEKc/kYeus/nsc8m54N4brTrJ45bzjsZxwHrgVpdQOzaKG0om/7AM2Mh3EtER7CVLo1KGKcOtr/m1Oo1NAnEM4jMCsva31XPY/TjE/W+S/Ujv7VB6BqB5ON4Ho1yxK0zKfx9YeqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721584554; c=relaxed/simple;
	bh=wTMUP29AepHCxKhKvg2tf1fSQpid42vln3zRtaI3q/Y=;
	h=To:Subject:From:Message-Id:Date; b=cfHzeWee7BX1pZVF9uMAqcFUT//KYd6FQGrsI5DXNuWZXkyCCxPkd+2iFN7PULOoL0gB4fWkLGnCxSUbtru4zOVHKK7yj0HgM22F7BDJ4qhyfV2WyWQsGC8Qy4O4uPxb/hxWwi9A8Nyda/QVENk7MwHafUohF4Etu8fONWD9rIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCkf8Ggz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCkf8Ggz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F61C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721584553;
	bh=wTMUP29AepHCxKhKvg2tf1fSQpid42vln3zRtaI3q/Y=;
	h=To:Subject:From:Date:From;
	b=nCkf8GgzlRsz9kmPbmSLyJI2ZMrx+XCN8VH00eiguF1InfkGNluW4oM/Cl+h/rPQ6
	 OCBc+0svLNxg10ItT5Mi3mN8Opo0KYn9LAJw4bybkqRG3fN4z3bzws9wJsOEKaWKpl
	 +3BI6RgN/eqLiI5Nq6eZxRg5KjEVKrKgpjaM3rxBLiwtm6tp77BVEop0xEh5kSm5ov
	 8OaTLTOpuxXlJBpYBMN5eeG/A04hJP/LSUdTd3Gi3DENvoV7lR/XYy7upyV3ONTEg1
	 GlWarufkr0mW4x6/14Y/4lq9TaMBmUjm2vWou6WAcfoPl5dWgMXALo+GDWD7N21mTu
	 M69HAvgH0Loiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B3BC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158455358.19752.17037482484418698237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72d6e1520f3686a208cbc94a289b6e531fc48f78ca51c814a03385b6421c916a
Date: Sun, 21 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721584553
