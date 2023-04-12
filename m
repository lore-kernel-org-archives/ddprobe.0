Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE192F2C
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 08:52:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA77C4339C
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 08:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681289525;
	bh=NdPUlTrxP8JYUuwjF311N4uYpj767WKABb3pUxekPyE=;
	h=To:Subject:From:Date:From;
	b=C1+LnPi9J5zpStWzDAo4O/LvgzuGXVVI0A87YlHO8c5lZOACOElIhDpoklxElogdj
	 2reET7y1aSIFzPqZGvLSkByH4TF0L5cR21Y6tK+8I72F8fNyrTvK6Gus3kLG3HbgEo
	 JhBELUrP5e0rFE8Nry6hkSz7yuL2SxQaVR/w5kk8MO/i0CC9BDLEYIO/9g22S/HDM+
	 ITxQJ5rsR29ilXCRRlmlP66YQKc+nmCj9rUXXydDjImEo4NLZUr9dyzDeswDn0cx4p
	 /p3atP8q/KCTdE+PwD8GY3P6zI5pe7EvL6t4FbVmfpR8DW52iTn/yVpHhhkmkcOjCF
	 GiEb+wltPoXJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7578C77B76
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 08:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168128952573.7393.5864034478742159574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e008a760ef16ad10da4c0c20cdc627f6f1689d6d8e7682d5e51492d518829df
Date: Wed, 12 Apr 2023 08:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681289525
