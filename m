Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B2386AB1
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 19:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C431EC433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 19:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694028848;
	bh=Jlsia8bVGFguK0LY/3SKPGGj645LWynVkBS7uL9gxHI=;
	h=To:Subject:From:Date:From;
	b=EgY8cp5j1mtvoXRYQYf7yr9grvhyNZson+pYcSeoYPxF3Zt2p2EpX+dtExrRiUDO+
	 oPVM1MFchhEfIRfjrJ4a+nZ9W5zkY2zlgh05Y3/UFgu8PaIbkmDOeMWHitoLmagI2e
	 L3TuhigX26Nl0eQPtimm/LP9GrvBsBsWTg2Jh3XgbuzDGOIj10ouhbIz1YK+KiYvhJ
	 Bqx6Au0aYr75EuJpIE7wsLCY0TLq3e4Wdt8aV8cFMQi/rzNYNI2aDhQRTxMDLElkem
	 UGMYdPL8FQ5P7Uylg/ckIEJzVaps5j3L2Y2DbmfNf8Q3/61qrFfTrnR/X/Jeqgc76i
	 Czdkuc5dqRUbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A784CEE14D3
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 19:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169402884867.15748.7795856476574077483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b4664435cd23a97c75f5e9a5ec1d8bf2215675b82772f5514390d35c9e9a949
Date: Wed, 06 Sep 2023 19:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694028848
