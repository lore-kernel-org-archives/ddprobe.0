Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F223E95AA
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774524894; cv=none; b=dMYHctBLkoQCq7hGW6+KHOpUDpsUzOgRHf5gMkobk/7Fnh0ygWW2t2X6fA7uK+DreWjsW3VOqH71eIbyubIUbQqpXa3qK2vkwv6GlKBe1SqQiZJbNj7VWK9xHUuPgto5YvKMG6Yn0HPirY5twolIioa6fO/oE+YG8L0JO3HV57I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774524894; c=relaxed/simple;
	bh=LwJMGP9SIygK494UK0sMp3NCpN/F0/83AgKbXib3HGA=;
	h=To:Subject:From:Message-Id:Date; b=q3HgSkBeZldDOQG6MPcApn+hJKvnZybRqoXACJI0+iyGSrHX0nQL3Nknt8Uw1y6T6y9XnQtRSxPk8Mg7+Aq/dhKMPB7D/1G+rCj/Ff1j3Wt/6nA1Z4WJ2E5qWOmG+6Dt/doVY/+7sq1en2gBH+/hs4Eo5F6XGia74w4aEN4QCT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZaPrtQuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZaPrtQuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774524893;
	bh=LwJMGP9SIygK494UK0sMp3NCpN/F0/83AgKbXib3HGA=;
	h=To:Subject:From:Date:From;
	b=ZaPrtQuAFCIQI1s2hcGG/YqajXNRowPL2Gq/jww6ik9BoSIlv+RjOk1Tr96f8fKYl
	 4y1ISyajGCFg7GFuni9mYDMiIrqffuqaMGoWMBzdSK6mQMrVHB16sbS2ycb+SXOJAs
	 J+9XEHFgaMiIn54pLuz/v8SzBiOTLk4RnL3HiKCjZ/Jgw+gHdH4PWu3zZtqYVfafsl
	 mh28J7+8+9HiohFs6vxiXoh0JLbXCss80u2z6pbrdaQiWybp7fZdyt9BHBjW6gWBTX
	 dfL9aRLqqQaSdE2vjJP0Gfo1eK4FAiF4HfsUi3sCAWw4YHwFYO+LS9GKQypX+2aEMu
	 8z6pCrFlz4XSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DA910A1E7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452489359.15465.14672687727341643222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4db00d4cf94e434419be664c42b613a338218ce6051150c1cf6d898437ba87
Date: Thu, 26 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774524893
