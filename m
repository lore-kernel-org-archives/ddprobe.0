Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2067E1E4AE
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749278394; cv=none; b=Mld7s3ZfVyFNQBK8h+JFLfQG2ztUhh6Yx/8+3T7mYRNlZ8eXU2ax7FADcUWkRDqlqyWMoR5VCuEPXm1OsQh+9byeGU4fiuFs2PrAUSVVtbe/1i9O3sKZ/qQcvGNenBJCpWmHR5++IJh6SYltOhRL9RUQIQ8Gs/n4SFAbqcVJydc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749278394; c=relaxed/simple;
	bh=+fnlE+NVHh9I9PD6R9bx2fQDhrdFMWr5iost4cWpEjg=;
	h=To:Subject:From:Message-Id:Date; b=oceMwJPeRwk4zuXsgoACNHltFMJ+MRr/quXVl2T0pe6s67tcvYbvzpeOLXWLaKEPe9DiZceSm2tnZUDk4b34jqzvYFOD3HiimSD+5dSKtee1+gwyJiXyQo1mMwGzgNGEJtJeX7BL85dpEWVppB4PKUDBBWD2hbUuChZDKbmvh1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTqayEq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTqayEq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74FDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749278393;
	bh=+fnlE+NVHh9I9PD6R9bx2fQDhrdFMWr5iost4cWpEjg=;
	h=To:Subject:From:Date:From;
	b=eTqayEq4QEwiieuAZV26DeAaaIS0558hkHBnw4YHAtMIqR2hbx2zIxIuOD68Uc2wq
	 bU5tFQYdIoUdQQCOAQCYXoYQibUvG2++Yxb0fDD1emtyYDCTk+6LP2GRN8WrbgTw5R
	 jtIjhohUdOo/SpBwkeHarmQ4K3gUWvSVQdFsehF5A28UggmAiJJ/KFDiYTraLQqPo9
	 J4YB38swVVO+DXyaUyoU4NQLPWTa5oSrwhjtWUdxE5P25cjAJ2SNq8iCthV0ZDHrQY
	 YJE5ngIFqd7RsfSBwyZCUILr4poeLVQlsVAd7y+ILRPUsc7VDRfjzQu4wDer5GIFeF
	 4yWDUvvPCgxMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95435C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927839358.14216.13532737383268492884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f72f50f6434338b916cab5fb8b7838d8fc1e634142f100a49fe51346a72d99
Date: Sat, 07 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749278393
