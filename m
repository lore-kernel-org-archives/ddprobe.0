Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0327B4C600
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708782497; cv=none; b=QE+uXsUL5YXNph1CoABYFNv5c2tTwKXAlowbeWi3BJ/+o9Dn7kjDIt5nSOXu7nOfB6sTuERLNUR5XmqGOMYCXnvVh9eVB/GtfGA/xi4sBZxUm+lYT79dRYQustPcY8+Aibn45UDsUD7EKqhmfwn0AoYgm1rkcdnp7dNSCbqZVB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708782497; c=relaxed/simple;
	bh=bdVfv4r0B9w2nGEn4ETY0zN6nXMKFVmPfkBdG9OGetc=;
	h=To:Subject:From:Message-Id:Date; b=ko74qNEflW2HXLvCqnHtNYGA8m2lfa/zeVt+35nD2almh/8mLdwfNKuMihlH93ZU431uSCKeL6+jcL/AwTtl+WziguYPlOnqYVLJdCjvhTBlnWpYPDpmdNOKDgtuo4T+BLXY2WeiUkNPbjJv5CsxlZ4uNuRRYrfpSbzCpl1bG3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk9BVZ8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk9BVZ8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8195BC43390
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708782496;
	bh=bdVfv4r0B9w2nGEn4ETY0zN6nXMKFVmPfkBdG9OGetc=;
	h=To:Subject:From:Date:From;
	b=Yk9BVZ8A64dPU6+SQ3aaKqTaNy3Boa4yXBYuPp5tBlFzd9zxkJwZ+GSB4sgjmFfd4
	 ZlVWbeF2nLfHeRky/WRiPPKj3Q2ZcfREvxuQG2ynNsqkviMfu2wLxEVdeuHCiKGtc4
	 zWkLSK1HlbcUYZnCJ9HBmBg67YbzOYFLrtvaT8qYWrkFu9viBVomgt8GmQGxj3j5Zo
	 YIrx/6QqhZpCIMW7XI60HNE2z+DmCf2CRY5tqsBTDzmyHJatirV1f9mu3sIXqIJwzk
	 dZBcsat1WUQkKapWCEpaNJOaQ3vMRM/h/dstcaSMaVEyfBfFpvMaP/d6tphSNgWTYI
	 G34cNmEmHU8NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656DEC5478C
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878249640.9043.18250028820528609098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970013257cf5056ae053f0346cda2e2d909749256ee3000eec6eb916e3a189ff
Date: Sat, 24 Feb 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708782496
