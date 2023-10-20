Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322D320E7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JEjYsmh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22B0C433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697779096;
	bh=QBtAmdwfZ0KCFrqQRd92dm6uc8VaV7XfuuNoB2PkhnU=;
	h=To:Subject:From:Date:From;
	b=JEjYsmh4jyfEuy2P4mwwfPyVJliUv7L+HFblgPlWAEjQjmVQUSBlC6BEJCMZs6Wv3
	 WavOnEUXJVf6AxGgg3vpRPXxV/zfZHdTWVpv2s1D5pe4ryOC03FEqLYbRTyHI65mH+
	 nqZDwt1YBdvT+I3EY2xVguUfpEbA5zuUcctR0fYjlmyryQICj7/40kU9EfHifVRI3/
	 0uGxkczGUdR5oo6NkZEHAch5LgqRKePlx5pkUrmvj1Qya6p2R9vloEiWmvfmrsk0XK
	 vufyVU6NjwrUVnO2pVI5ENeAQsO2GprmPqMd+zS5evwko069vU2R2E3TFChEuDma1/
	 pPLmByJM4CESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E7B6CDB474
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169777909643.17298.15904971635595065519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f314dbec4ed76de5e6428be3a37498142629f5024d0f3f528f8f351bd2858f66
Date: Fri, 20 Oct 2023 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697779096
