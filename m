Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2562A1A4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720582583; cv=none; b=qTEiQUJubMBe0IzoeLp26kmjqFJhMyM21KxiFeqnf7UpDXpwBb30X3GD1Lc8LyXp3Vu+5+5Rt83zsEhVnD96iD2v5wzILu/Q53+MilaEGujAufkk/xWMwe4QX6BjNaYOSYNYDakCr+eXTDX7n5YxgBoS4U5QxFTasmjPxpLx/h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720582583; c=relaxed/simple;
	bh=93VZ35dzuYwl5w2gFV4UkWbro4VfuepNpH2cAhfeLLE=;
	h=To:Subject:From:Message-Id:Date; b=qCxDpS/xw/z5oKI9nnL27Xp6s8qSf7r9djjnVvnE8VithHOTn0kupJP0MbcBZ6pCm8yiDylXqIn5uEjS05i1VHfZU0hV1cJxPyQZBNzY/KXHt9CzU5G2B01FB+rKVRqI0WdieI1RqZewU1+WJMDxB0/81OQekTMEFTCe7IjQwss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE52caY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE52caY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D896FC32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720582582;
	bh=93VZ35dzuYwl5w2gFV4UkWbro4VfuepNpH2cAhfeLLE=;
	h=To:Subject:From:Date:From;
	b=uE52caY5hJ7BIuCDi0DEU7U90MOibRrUfg2LRckz6sDUMxE+9+RFk42wLQ7pgErYl
	 kgvTMt5RYfazg3pB5laPVvySTOMkcB0kkeQWaoicbS90sGdboki2ZaBT0rHoOXkJNo
	 LCfZCMYJxvVGNoBjCTk5NVdhBx/rsq//O3KCF6SOgZwLCpPvBm3tJUKO0zUAOG1ILW
	 YUeEvBVkEcP7z9sKG0bDJm+QENfLmBd36N5qM9lZ8l/RpzYo/KcwJe0EGsF5CYn2eg
	 zms+ma+TmFzGqFLd65gtQiOBDHfxdTfMey4odIvCluP+V9mS3BC47IusxNhUzSAW94
	 DRa1BwbKg2kpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E93C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 03:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058258280.16179.16545981932813149645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6aeb230f0d4f35c3f241b8d836c81bf360e3d7aaa9f0b57c48a9f9c9c3cea88
Date: Wed, 10 Jul 2024 03:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720582582
