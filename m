Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECED2472AE
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777828054; cv=none; b=kfn5n0adyaU7l2sO9nKAP3xg9IqvzRJskYY953ZjKnwhbWigYCH4HCJyQjbZne/Kn+ejPSPg8C41mhvIs92adCOV2iSBdQlmvj/R4tpnqk7X7VIi+Zb1xqcfo8PBI5C1V1HpnuPrJ2I4RQGSwP8zh5JKOi7HP2s2T5a1Eim2PtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777828054; c=relaxed/simple;
	bh=jNbPe/Ef1mKv3A5EOXwjBINRTlSqCAPBCwlnZSBHazo=;
	h=To:Subject:From:Message-Id:Date; b=sSmGl3qwRDRja6zd335fgM5TXg6G9EYApQ/IjN71QmRTCMzFGR5Un7tUp4SoTtmylopC//KEUDhVm+HnpFgaTBLzIJkpIS+/v4yoJWVoc0AFsshyqrXJZ6zUb3S+Vii4f02PadjdQDztWKPPsRlSs+f4Kd4gMCLleepdptn7REE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pybov8Ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pybov8Ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD09BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777828053;
	bh=jNbPe/Ef1mKv3A5EOXwjBINRTlSqCAPBCwlnZSBHazo=;
	h=To:Subject:From:Date:From;
	b=Pybov8Uto3R/4/XNZ1X/5AwbJK/7Ew0puKzlaHZkgJpN09HUZz0DagYN/x8x+2hmi
	 g1bSOXn3unvr8IKnyW4fq+d0n739qdyr34PuJtr17/z7+ao/VI+tHDEc2rNtjsIwOu
	 q65ZfC0gFNugRw6i5r62kdqgUzGePwiXk8tD9NFUAjI/UF/IXyA97hVuwNhOeKG2en
	 Vr3W4KGNH8DMY7Y1Z+GbMjDE2Bok7KQF6EYyGmrmK081ITUgeZaAfJYWj4AVakXy9+
	 Rc3atkhxpECWf0bRvqadta2YMI4leH+4bBwuO5qSGG6vuAd5ye0psauW5jM6xvqUfF
	 /lMNl0Q870yFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA2CFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782805368.1237.11502303832997419865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c84384d87d64ff988c337f672e1fa5459b5ddfef8427d535167187a3456116
Date: Sun, 03 May 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777828053
