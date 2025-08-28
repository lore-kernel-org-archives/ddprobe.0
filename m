Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21516246BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756400394; cv=none; b=Rapgb9VEpNbvRv0OqtxSvn+u5ivRh3NAy0VPoej9hZ7fYhNK+Fdz7qP44yrm4fZZkGPSzHLZDL1adN7OCma7L8TFjJ1HvMfOaaGDEpVTZqhmPPXi/4azMTJ8s9B5kZeiUInsCH6fql8n1yXry6Fo+k5eufvv4wJBmRSYtDVHdrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756400394; c=relaxed/simple;
	bh=mpSzjBEOXKUvT7FzHYEL9Gl4ndQCBitAA4ED4/L8yDQ=;
	h=To:Subject:From:Message-Id:Date; b=GZdg13sMRo4Rlt5WD6ftmnB+/BJOWh2hp6xyD5AofLMJVlln79LPrH2KGXs35nyFPIZa9UQCpHx0h5WtuKLZGgYmw8tpSPsx6ynCXDf4eVHQschD3X9JJCLJMgnj9yv20ZoXJ9+8+Ol0zlY1rSO3tNA9XwWVm7ZaG36kYyXX/Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wf+qcRhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wf+qcRhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23D9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756400393;
	bh=mpSzjBEOXKUvT7FzHYEL9Gl4ndQCBitAA4ED4/L8yDQ=;
	h=To:Subject:From:Date:From;
	b=Wf+qcRhSkd21YRMHDo0j1u08sGHwfSnLbHwOKGmgaeFfg7eFgcoVzGK/O0SPFsAmM
	 snijm54GScuAJ44tcrpdfAHahC58riRcPn2hLlVE8D7g7kYjAaCImSE7tZS6M0GyHr
	 aEIgQpQwM4LBRx09ne8FFKIyUKEqugqPPhoe6VJgyxCDVw9vz5/nKLmfnHX5bLmcP0
	 M7VHr51MxHZNr82JHVmKCwbPh5e8xc9QmiD+zGMr0ubk+Gv2kJxxDcapYS9q4w25pR
	 fwD65UmVusfKEQSGbOdaie3Tl0DKKxMEX10C8bAIuWi28PGDbMm/QAsVwXquC8KtWH
	 v0fUDXpM5FfAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B4CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640039358.7714.8614134474681496708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ca2cb8a288ed079f283271969474cf6d1040b1e179353528fe268bb6b1dfea
Date: Thu, 28 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756400393
