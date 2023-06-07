Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9797534D9D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7479C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686132725;
	bh=MOzwZBh/D6qR6XkE+2XHVmFJ750FZg9f34HGkfiLa0c=;
	h=To:Subject:From:Date:From;
	b=dGk6dnWzrKCdgKpMWupeV3g3P1XvCoAsyHtWgqoTku+ssHkcW/awBDEUgU4rkoI0S
	 dZkU+2Wtl4bZ0/dYnVdYUSBo0pvAsfDqlxkUGbx3xAIko5jA+/Yby3EiFNs8xUqkm4
	 1FdjViiE98B5drWuFR605s8Djn/tXNnTKPnC3Q8tRfgCeb6OPQpMAx1HA2QygDkm8J
	 4jgbywCHpHQavGTU2rZ/Q3eaSWqSPXI2GaujNEI/rG9S7r1E0LVYsMy6fwnXwXVnAW
	 g38i6ngsHmqhtNfVRy2jsFB91fVc6+7Fof7ojB1Uunvm1s7ANHfaQbjgFHNZlDxRim
	 gHRQAEjhPrqYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABDEC7EE29
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 10:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168613272575.3751.17262038850413520452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f337682319ec990a45b4ac4fe3e182f8ffbe991b5d735e472307e4ba779935
Date: Wed, 07 Jun 2023 10:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686132725
