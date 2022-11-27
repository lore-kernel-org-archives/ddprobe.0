Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC581EB29
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73634C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669512654;
	bh=9Z0fOl2inE/XPFlqRaaUlOIA/C+gNz6vgnAKRRDRNoI=;
	h=To:Subject:From:Date:From;
	b=tBZuTXGI98+YJBJ3Kl3SHVIJpy6t8g9pjluUdXl6bei3IC5qHIrSsnOAHwBP6wD3k
	 vuB5D+xA8COsYcvFauPggxOOhd3+DqrcK75lIWnxTpJElLueOgyEAH3vpoVqdLTi6U
	 vAJSOYZ7hogDf2+BTRo+cQJHMxujp4rOilmC9gW4YLeSC5w+V8PUuNS0BLNPjrYB5l
	 Z6NfXFf7oXMVnd2i2r0npwtCRLB98gxdOEVgiFjWB9vU92rFKT9CBu5ESe9fi2dhmO
	 MNEMbc3374xFTCVP/xuOK0rd0wF/wXJHDD8cb5mm7pIanyFvHQgdcF+iaojI4h9CX3
	 vdPZINuWbRXnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F88C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951265433.9486.14347704980727816152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da996fdc128b4e9c7b5d1138cd7c10659e1db653cd244754e586418413f83f13
Date: Sun, 27 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669512654
