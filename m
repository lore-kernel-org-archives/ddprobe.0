Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0F91363
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 00:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77C1FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 00:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661388052;
	bh=ApR+rMKuDg5AIviDtTsrfpkjDu0RADUiSx1raAF/6ys=;
	h=To:Subject:From:Date:From;
	b=K6R2NPHYBHqE/qPHT22T35Q24mFJR2wUloeEoqgtiF7jwDao2nhJsGMS17cbrUAI6
	 ZCc71HpXntELrymYiSyH/xwcPVvnutpCWC+Oo62K2kLS29Go3vUMq8/WsYxdaNUXGj
	 1QCIAOy4KPVDg2c87hcoU/ziaflUd9g7tui1fsE8X68Rjt6AoHerQerA73MDlcEHnF
	 7OfkcYLG+/UiNQn8FSxT3ZK3o7M2ODU3ymok4TYiy7WqYyJgWSGhK1no8sD3NOx5Ea
	 eSNJyyzszUZ031LWEVHxPZr3g2wV11FmCP3uaDm3rkc0Po4Er5VFbEWve/uMP78ytT
	 ld2wQ+8dkIb2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D08C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 00:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166138805238.31677.4213621319189564881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ef66f6d83168eb4d629da685efb657b6c0d3192efa5c3ddee5da2d5ecd20b3
Date: Thu, 25 Aug 2022 00:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661388052
