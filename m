Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ACD217F36
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743019194; cv=none; b=aYtvfQhBD3q7Zo7yCWTBoZSLjNfilWGIJaewQtPucAqg92JSue0mbwYL3loIpSyQ7Afv8ctpOxNEXh5FoLNY2tfYC2QJpCSasaRBMmia3Y+cs7qgRfzfHVVLexibEa5QYC5VI3ziAEWWnOHGEdCX7gnnHj92AyVjVfCDAWYnC/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743019194; c=relaxed/simple;
	bh=XzOyAIDenWsctF6ilU2/d3/QkkuoZlSkGIsW3B+MuYY=;
	h=To:Subject:From:Message-Id:Date; b=PUuOUgi3EuPT8fB4KnKeDJ9A8FF7vCvwLcsgp9GlA6zRn+zic/di7yHgvEGeCY1kh2GU1qjYpbVc7OLIpbPaudjm3nclJKZ4lS6TLMfb6Enu3i8ZhH8SHC1gFoUo6kIqcKxDegFXfozqqKnSs8dsgMgXrPGAJ9jw50KY4RPj+ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2iXOLg0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2iXOLg0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B6C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743019193;
	bh=XzOyAIDenWsctF6ilU2/d3/QkkuoZlSkGIsW3B+MuYY=;
	h=To:Subject:From:Date:From;
	b=Z2iXOLg0ydkP8jFb/0ew1rNWOTbnfuYWVgNh1dhzpGk4mNOCfrZVe3Lz9G8vc/kHd
	 wsjilZ7ytucMNGdh+XaF9xbmAexUAWDGS9YmqgaowgZqear3dC2z6vJr9IsM5dy+C6
	 nxI3oOBfo7seOz3O1z3kp3t+pGLP86jVtaGRWIoMV9WQnRRcXG00VW5YvOL5A9Bnbq
	 rM1onWZJqpxxQA006rEfB25X3ixqZvo/fn/5bz3oWpa3MwI9m1rGu0C3C810vGY8d9
	 rRKM9V1co0z0Nh4ei07JHjXAp4cDPYR5j17hf9rjoMMjpRjeFG+yTgvIto2DVxP6oA
	 9iIYbgMpC1cfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AABC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174301919360.8289.18193890725273777552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6524587441601a7051790c5e6d9e7f298db8f83773d9f10880015ecc04173ff4
Date: Wed, 26 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743019193
