Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C1016E863
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751225994; cv=none; b=bD2cYRynZzqJm4d7eraF9QN3d/I7eXG9MdKEXHez3c1RNJfYkeqqZ52ah4TKJRJ06oM+kuZ/PFAiBm8+cowdqfB6mdwM7ppHsg4Axur9gO/rswyzvbYHl/jgj8FfJD9Wc04Dde2YgaJsKgrEG8qJnNBti+nF/fGan100wo/o/uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751225994; c=relaxed/simple;
	bh=Uig96FEylvMl7WhrL9qxfgAXoCPjVvI2C5F3GfDo4i8=;
	h=To:Subject:From:Message-Id:Date; b=GK53nRHGkTLRAF2uEm3Zu17yCkQIruUPgdXTwJeESxTHWS/B2PtYeKN2UKdYXjPB/VLE+5/GCqx2dAfy2Hu9nNBpIiuFNGzz02pG4P8Q3SY8ujXY3PY6/ZHQvjz2QuHwCwFuaVgWxqlqRVapYCkVdqcoy6W+0/fY1aZ2HgtLUEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToncuSAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToncuSAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751225993;
	bh=Uig96FEylvMl7WhrL9qxfgAXoCPjVvI2C5F3GfDo4i8=;
	h=To:Subject:From:Date:From;
	b=ToncuSABNCVD8OWyl9ui1Ug1ENRvc4pr41jNMV7ffeRwCnYMotXioebhHbOK7c00z
	 4HuoXWWe2Rb+ArMwlPYczux8Jhy/Z2YPvaAki8nkSLyEtIbAoDlaKEz5Fr7RQP9ocq
	 jjYR3rPnCxqH5fvH4tDNa1HHQH8TtwK1+jysGqlh0hVx8z0hcAa/zXUvy90FU0G113
	 Iw5itI2+ygck317/zuxhXPRgeOPCZIrudjOonw6zLDz6DnglcE7ZH2F0AD4MnStIik
	 wtRqqRATu37QbISNz9yCWdpqutgXWIncqYq8CX9ZOWRpaqpJoFc2qcsa/GrmxabHJF
	 s9QPWQ9o4Vuuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E25EC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122599357.24924.13474088975239220626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104cba4c60df9a76964b38de9d5deba16be28d2c45f3d310aeb769d2d1beca15
Date: Sun, 29 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751225993
