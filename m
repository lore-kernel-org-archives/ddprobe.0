Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DD82744F
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783520914; cv=none; b=VR2GyH0EB4Hc4lhY/fHU0YgLGIMUPBB+Kb6msi158daY24DTzws5JWjP+KJC6XmvQAulpeAy7TWv0UjfwaZNJ/QFhGBeEjs5tyyV/gKwbof7n3U8dHxK/WEBDTzb3FBpyvgqpG55e5968fo4N03PC1v6hmzfL/Cb9Xf7ji7NcRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783520914; c=relaxed/simple;
	bh=TWaq8zTK4vnSIWzx2FsT4cuIBY/QXimBs1xK5V9jdJY=;
	h=To:Subject:From:Message-Id:Date; b=IxWMPPt5WLB4YJwtn2ZiiPDnVBTgG7BgEGUvJEoQ4cS1YUxSqmbck9j9W5fB42wjzP7Ay1BDDimbelrpH0D+RhHD3MVQcO7f+nfvGVaKdQGNgBGh6VFeNG+EJFxHcMD+H4uydDTkA+8rpYV5m0Sp61+bfnDdkdhwZg9QcRTMLxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQdubMnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQdubMnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A47C2BCB7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783520913;
	bh=TWaq8zTK4vnSIWzx2FsT4cuIBY/QXimBs1xK5V9jdJY=;
	h=To:Subject:From:Date:From;
	b=NQdubMnPq858N+O0/Q9jcZS9gbupdhwtCi5je2q9yyRvtAVhVh57XzmqhZ9FwgnlU
	 ik+N41aXyMTLTJ+aAgo6qMQNpqPgoAfnusO70aOxick+fun3d7gKsYAiNpFlNe8TVq
	 Shg/yAj87KGvs9WKX8SZhmGfHZ4IQC6/mkzQUfT1dISsWwTW4Bbbmez/mkfnxWdpus
	 YSjGSaHz1ewtD9CE4qZ7wvYOqVZNvSYOFc+t5g1vbHj+RmRJ14t9Q+QmtbYyc8ykCX
	 PY3bs2OiWX+cojnPFtE1Dojl98R/8ZKWuW76Eh91nIxr6fPXe5/VhSCLJ7IcsZbwz3
	 HunlAdVzL2vIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB91EC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178352091369.26815.10987786641496463395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f952d2825e1c3fdaf798c802c17dae9a3ffda34e485347228217ffe6fee465
Date: Wed, 08 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783520913
