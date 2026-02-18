Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDD1328B60
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771423494; cv=none; b=ElGIODyqy4Vp6e7jMM3K5z+tyVI25x0IRP4+Sv6PCv98mcrlIgnl4gZJeT3tYfays0npDZVx/6brR8Qapt4SK5y23U6ayzvjhefa7ia4WUGdPIUCUYc6jOh6qxckagfOgG5SaSIM3YOmrxhjaZ6PjGn/QQ84fVPkdRYpb4UH9+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771423494; c=relaxed/simple;
	bh=dYe/V8m+oO1jBrVRDfiT933xA267hbGaBubnioI1N4M=;
	h=To:Subject:From:Message-Id:Date; b=ZRw/Za6nNFSfYQ1yp11Gxb4WfGWT/h4YVxLzSRxK5k2ybvI4MpA+TV13fo5LmYJKp9IkYd6Ry6WaZh16HpBXwR/tTbdG/WFSXZuf5D51Lga/gUqb3WDy9fyclC+EDmgQG+w/G4XVhaeiyy4HHeFMO0xwBD6Si28uMOOY7kpRO8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e22gwjo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e22gwjo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC7CC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771423493;
	bh=dYe/V8m+oO1jBrVRDfiT933xA267hbGaBubnioI1N4M=;
	h=To:Subject:From:Date:From;
	b=e22gwjo5dBBCEsm97sTu1Pr6AyAhvRuwo2eLP5yiXQWRTf8v+RHIh4vXqkprM2Gur
	 7bfpKbjbqK1y2M7HU6uzU7xJKEpV/gMRJ2UF9uAX36efCyglDdFRbMSnQMRxUsbEMa
	 0DzxIj58seheW4ZJ+Deah2EcOCQGds9rZBoyce0qCTHPNhVYg5TG+3PoICQnRbSFGU
	 oZv4NRy4t5dz0f4d1wAt7DLZDdz6U4Yw3Lb6zPKuISDrC3FzdHb4oD9zZl6HNuVLjw
	 CVaSwdG1kuKLuD8XVA69bRR6XlecibQ92bVCpwiGuhq1Meitsj1Xzf0ctsmDYnGLxo
	 G/nKZmL2k70mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E4E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142349360.10748.6174016389131972916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7a5cd56d00ec5295a581b50df3474986a5bf163e766a540d9ba7ebf0c50c78
Date: Wed, 18 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771423493
