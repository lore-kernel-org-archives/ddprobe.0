Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18B66117
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83151C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673568087;
	bh=JtlmXOmeOfijqlJKIGXjXcUZRFz3odhfmeVclJjSQ/8=;
	h=To:Subject:From:Date:From;
	b=rIjm09Kcq9i0+TkwnU9rwhwh9a23JFNteCAdrOGvSyKx6EsR31QgPLg7yzFYyEEMI
	 RycAEvCXbttjkLMuCiI5bsotcsH86VOdacPvKrdUVSiqG2VCDWfZC5onY34YyfVtrF
	 1A1nP8l59keiHlsVljyF/4yqVU/q72wEnRC3BAI+7FWPDUX4TinM6LRKOVc4dpIkOK
	 yRppEBMUTyKL9SNaC+70u5avkEotFcUx6Ciogg98XaDvi/JeF9r1HV5S0f5isVd1b4
	 nJN8NdAuMkde0Qx04bFPvmKsWK84aiM+EvZUTPS2MRpQmFTsL/EbO/H3AXjMgItmbZ
	 IfNjRieHvbCkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A845C54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356808742.6101.17114839143261142502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c022d1d80ea01249b69c8e4fdf9727eb9aa60b39791a7d6ead8ee2d5efd87f97
Date: Fri, 13 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673568087
