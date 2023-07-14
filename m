Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7810AD510
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 08:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 021B9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 08:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689323469;
	bh=IxhB6DxEWMh90Ki7ENmM1J44FaG7KzvPsL3tWBMo5HM=;
	h=To:Subject:From:Date:From;
	b=Czlnr3ZMVAnT3x/LKqvgst8HPjqUYjzRJKblsW5J1Q01HQtJ05g3Q7JaebEB5v+3d
	 R8Sa7Qy2ceQs5pO+Y6ZoWXxgraZO6QAj5mSBTCHkDT5FUGDGcVx2wkwwQrVjnMnKhs
	 EqDQDU/vTzppKOXzWJf/T9xBAguKRj2k6Z8e+WbLwd1Hfas4lnIRnKZbn+locltVjJ
	 Tuj9FRlLF7al/CZkH3sPtERlPWd6hWAtCzTm7MAoqvYNeZ2AOzYoJWp3EHH4Qs1MOZ
	 Lcyh7jnF7arGASE9rMozZyAcrEHLQhjRLGyr50tKIecR1t1AwaGRE1XoWTjSy9hSQJ
	 3pRHUdjRA9ljA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D54D1EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 08:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168932346878.31449.3142611846213451289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48bc7eed2288e517728064f9e4cfb5881f84b5c7572fee809012535d3666c06
Date: Fri, 14 Jul 2023 08:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689323468
