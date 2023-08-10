Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381B81D2EC
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 11:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7912C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 11:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691668388;
	bh=AFtjE/N9fpEGZIQ8F6ggYe8ODEEUV0YlVD4bcWB5U2o=;
	h=To:Subject:From:Date:From;
	b=Ce92iZE3APk4RX8HCO3j767Sk2xUlXB5/97fjtQfLDu+ahdvSiDewXIFkUGcL1R5f
	 eGnorK4cARy26uwh5EE6mG2Ir1Wo0MgYGqRPKMglXNJ+pyRAS7XfQtzdTTY2NhfLVB
	 ZskVDYeyFJjlb+m+nwrhavhtzz0hiXkuxPsSfXheDNtPg92fAGNP/q4vDHMAggFY92
	 e9mSs5e23XlhYiO+RMK1kifQujBy6PoE4QRyw4IODEfPlnFwQj3zSz1Pe1bMk22Dh6
	 F1je+cMgmUNaVEinSYW+qne1kqIlOItN6bQ9XRhwtxDUFk+rtrU/cXrcVK5D0WS99H
	 iFYBof7ctYduA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5625C001DB
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 11:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169166838866.22984.4868370013631158300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00d9880745488b72b83ea56841d5ea659c5409f6fd63f0f1eaa7db44823dfb09
Date: Thu, 10 Aug 2023 11:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691668388
