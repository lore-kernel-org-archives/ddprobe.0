Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD934139E
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C02C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669264854;
	bh=qat+9c+1Etwe5vNvEDZOw+EJQmnWncfxro85Id0e9D0=;
	h=To:Subject:From:Date:From;
	b=NQN/vp5yd25l8b/BIJ92GBGLQBOOWkb0o/nnFNKswoAfmF214kH1RgzwX3jg9WSzF
	 2IXMRlOb9ILS0lbd2ztL1tLGc/myOZ7VUkUgBj2C6MGZqFxGVk3Ud4NNQ+q08IumLx
	 /GtxD+EdsXvtUD/QaRV+ZJiaehp8jRmUb7r2zvVgN6PtItTTiLNKmw9ku9GgNI6RXp
	 k7bLMNsmsTDujJIt16ecL+xbxJWsp1rSvKksMEQzx+5HIdaxdMw+nrRrBLGdF1fcjQ
	 gl4ukdcxOuc3FDjDVOTPaUNihwFDYDHoyFTHmO1AvnBz02oD6OABK3jNqRHKXsom0H
	 CRuL7xyIk5v5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5849AC43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166926485434.25692.704700747529485038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d2f1a89c363a917a7b289a0c080567ee40ab425d319819632a0e7d100dc74e
Date: Thu, 24 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669264854
