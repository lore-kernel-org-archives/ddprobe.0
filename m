Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314A05CDF1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779422554; cv=none; b=f8QsB9O83gr8y86OltomvyV3pxciJZMvVwFM/atgsxG6Gj9+PCVQOALmuLPjQJtZ/+jNPqdco59s5rG4Q8bb24mLezOv7bG5kU0lwJ39b7FQerApnH4yBbxC2tMiJanN5twPUBbNQ/jj6Cx98EKeoTxc5z1eSIZ8WZZLaxoSQ3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779422554; c=relaxed/simple;
	bh=LPy1NEBk2EsxTfxwWeZKrZ4g8QnIXi99cP9XCrJKXE0=;
	h=To:Subject:From:Message-Id:Date; b=DCWw47/CvE5Pv5+hBFASR8HXa0AJ+l1PKiOBbWmUNfy+WKKmNYaIFr1VBEMDFNqRoqldwS2NDc4OMUEm7eKrVoHLU7XEtWp4HLSAPn6vxnY6XA8y8qVoX7cX+scFkl8MQ78MMOXO8KZXFVbW8MkS74+Ref0kGFBWYIVEb4gKzwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGWVt0gI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGWVt0gI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C296DC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779422553;
	bh=LPy1NEBk2EsxTfxwWeZKrZ4g8QnIXi99cP9XCrJKXE0=;
	h=To:Subject:From:Date:From;
	b=uGWVt0gIRV/60c6SV7tKQ36s60EPbGXniaOs+0+3xAhp4DIABu/Q9+85K6txQmn5o
	 t+7Jesi2dN5ocxqk45OSp3ttETNm9JI2uFMZD3S1VisbGlQtx2TIXtoNcM+SovEgDF
	 JnDNHkkKo72OW8ktHcZNW2Sx6udtc5V608iEg9rkFTaY1/MunilQeaKmp302f0M7M6
	 UeNHsxJYC9bkN8NocfLIN7gGgTmpkRFEfd/3XiI+pB/4UdbnjHUY3137sMChQkkxjj
	 1qqBz66QD9jsCkZOTYFZ4ubYrML3DuOmxbyXEtId8912T6nem2rXrIPupLa8IHPEIC
	 u+Oy14/k9LVjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EFFCD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942255368.20411.2460958555557475733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f94468b0e68a9d503dd76148f4720de9bbeecc7d93cd1e2e3158d73088a992c
Date: Fri, 22 May 2026 04:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779422553
