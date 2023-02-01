Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38312882A
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 21:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89B1C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 21:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675287965;
	bh=BFSHF04/YowgmkqXLQ/H8uKYLOGPMMt7ZXsXF9qqglo=;
	h=To:Subject:From:Date:From;
	b=GHPz94z+TVIvMSgyCXcb6yrIPmePoVmeLn2ViZL0+3yZXJPFwRyMJeQGqjawuCnFT
	 f7nVf0eVZsCoQVefiNJe15m0woI4Ece6HhAapuWHOFzS9A4d9szNX5gqJ9d8nLLlKB
	 z8sZ8EilE2JlOiUF0XSDk+hkExQkPRKHaTZq/e87cICwUfOejqJSti3jwr3rU/ftuW
	 WTaZAuLbUxWbCja11FoB5ZQqPaqvFL8MJA3fBuK/a1SBkXpFf8v+S0T0R4MbR2xJDu
	 zQVX97P8D6Jjd2loDeqmXVpHUGlmhU/99FMdBmNwVBdB/NUsR+6X/PwjH1P5d/aY2H
	 rGVmrg6F93J7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B946BC64EC3
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 21:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167528796573.4461.4816579796733741813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03b25a7060d4f485b4e1245f8ea3ff65c4540bae3a2f9dba56f5914862e3388
Date: Wed, 01 Feb 2023 21:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675287965
