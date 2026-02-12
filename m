Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B68C346E44
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770904494; cv=none; b=E9HonVB85VH1DhL+ZPbXTSjDggASJXg3hbRQP9YrgLA+CRB76M2ACO0ZQj+Z5OwRPLvbEwH1D5gyiaT/T2+NFPireOfIeshrjUos424rycFojnXld2ahC325ZNLZACwCx9O3F+rNpuKSYA73OhkXTh2uGWZl1N4VWUgGnq2pZhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770904494; c=relaxed/simple;
	bh=KYAlQFHpPu9MJ5oxlXWQb7fd774QOe3yMd8sX+RxDF0=;
	h=To:Subject:From:Message-Id:Date; b=T3tyu8dzDmKtP3cJrg2pwHrGwMjxpSgchMPN+qsRX1zcx4S0NtXu6L/IVl9etw/QL7G28OFZlq6vdDXd8o08JfjgFr0iY1D+AoELtxz/z6Mn2Tix5EzsgZlcfvgvi0yc6BnonFSH4ufR0LMwNREHsXpGZ5R+KvOZ+kG8XSW/K9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpvPR6aK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpvPR6aK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A781BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770904493;
	bh=KYAlQFHpPu9MJ5oxlXWQb7fd774QOe3yMd8sX+RxDF0=;
	h=To:Subject:From:Date:From;
	b=RpvPR6aKNW8l2ToVJtZpkMy3j3KLFc9+h3IsGZ72nvLkh2TIQXF5WzYA1jSFYYYa9
	 0DlJVB1/aUCvLZJPdj6rcOgzV3I1cqTiECsj9q26Whif/zKrRUOXvN7nwYnBLsIKGE
	 k9zQemUATLBk683uVP02Hj77zg25mYx3zR7tghDbJAdjE9hj4trNT60KZDtIx/YZkz
	 D5XXzxUBrlhH+uoGxEk5V7n4jylsz/ULYDC8I7OVlRjU+fjhbDynvdNPUlbTBAazdS
	 HxXiGWeH1hYaVmbjV6X1i9qP5ODbGmM2AuppgVASQu8Tsq8XZVnprDp7sHU8sfef8c
	 RXGiTFXSDkP3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93510EE3686
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090449359.11744.3648979997540387840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3c265436b15567e18cec11b814dd013ca848b91301090a644e06bfa2ea8684
Date: Thu, 12 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770904493
