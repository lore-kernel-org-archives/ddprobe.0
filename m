Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E188825
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 10:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A3EAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 10:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686394146;
	bh=1V3EPCGiv2aYBUG2pSBvzS6xWWlL85kAgtUMxp16Sw0=;
	h=To:Subject:From:Date:From;
	b=OQzjseZSK7o2/9Vq3S6C2pIDOHS0JCEPedjTLh5zNAzBdACHF9UcA8mQAFTg89K8i
	 UlBPxcAsmUhcX2z3U8LqFbtbJO8XPQ7FVT0YZkK/VI6jhG8qf5XyA3tTI7Yr0VYyJt
	 yD0VlFGyctu7xUG210SsD+gFUKLb0rS+YH48YOLfHZKuYVKiispMjQZbYprwOQ2vvT
	 Qx3oEjapivqYMQ5a2nD51FR5CHoEH4LZ6ewNNixKjvcxB9NDThIDc/pRrxQnS3WVYL
	 kP0AT2qZxMJ7MVs6OxwUafDMmvo+/ckGlh4StXb3JazFdc4gu22bngUKpC1R8uOmcD
	 lCZRNa48+cXJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8CE2C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 10:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168639414587.15820.12527429834802611223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa58b7fed4c4c2a236cf5d96ec923d14e76650fb259ad089a1df1543f41fd738
Date: Sat, 10 Jun 2023 10:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686394145
