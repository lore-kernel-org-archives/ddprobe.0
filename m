Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231552C9A
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754020794; cv=none; b=JrkxAHb6hOMY2rbs72sYgwmtvdUi01LPcbHPU4b7LGEPUi7rL+15uzStbR778L1lM07wOD0NaompibmmHFLEBlu6ct12A4CsA+xGWU9GWQYbazHIxUTpNuevghW8UBFll3mVdtPNlklCApKcfx66tGMhfOmzAhycjIcedDdZXTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754020794; c=relaxed/simple;
	bh=Xf0krXAM7mPpLbScAklgEEGt/xuwdaihMqTJDGoKzh8=;
	h=To:Subject:From:Message-Id:Date; b=k0xLBXPRu7PeRp8k7w1U7r2SG/Ek/pWkzasxg6ujgBf4vRj84fDxWiE98csefISHHnW6dAKVMuyZYfycZoaRyQBV02vBlEG55LMPVL7e/AWnzxaiWq2RdXCsUDUZcsbT3EpIU7BMy/rSU9UQfyBmWQPq/HKTG41LwyWubJg6k0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiAvWZQ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiAvWZQ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4E2C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754020793;
	bh=Xf0krXAM7mPpLbScAklgEEGt/xuwdaihMqTJDGoKzh8=;
	h=To:Subject:From:Date:From;
	b=LiAvWZQ8WZ6X2NwT0bd8niTwgFIxL9RBHgRnjpnh9OxS7lIJlBdHD2oumQikXY9a/
	 PrVFjdIAklAagR0RTYnN3B/a3vAWDahRQmRGwGiBZXjTttjtME1TeN5rMsrD6v2iZw
	 2Oj73fMCHI+AiohyzWnbHn+TIJ8JYwkfEUz5o1BmRBsjtJViq8G8D/VkN2sXSwvVl6
	 SyOICkqEOAcML1IAz71yvcmSAGIyAeSBOQMCyM0Hb/q0/05Ch/pP6tH0g+Jxm6LfOL
	 0gpfvgSns7Y7osdi5iMoC8i97JCd3zwuU2MRe57PbbIF17je/h8ub/QI6E3Nq11fLm
	 gfvz4WS2rsaaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F93C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402079357.32592.17482783014874436991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa178163618c4b398aa3506da79a05166a6bfeaeac4bc072376f109f4695f332
Date: Fri, 01 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754020793
