Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3143211
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7180CC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664662853;
	bh=z2VquX6QnT9NmONo9IwCz54p6M8Tdwo2DdFX+jm1xKg=;
	h=To:Subject:From:Date:From;
	b=WCfWHX+wNKGR7l+453IlJcvzwoOZ6dm7qu6h3rNpjYkPukcvNYs2VxgiFOPt8PjOL
	 FTBeYeKNfKLqzMqX2FmgkEPrpFo2MocExHeqnIpqTaJ823w0Ht7MULSshOy9lJcfYJ
	 pswc3j8QliT+SLUkqKsNMP3w8b3nNux+u72n0Fn3oD3j5IUZbwDBvLsZWiuPgGUOgE
	 XpKcnSTzZ4JCr6nZOcAxfa7X6Mlq/pB+X715dIUiWneO4HSPILkJCCA3IAU8+UKH6w
	 K5LhZZ7FxoXq1w0V/4f22ogzFOhO7sCdHT3OEVikk6Qmsp1woNJ/ygAqWJd7S57aTd
	 i4Tx2z6o8C3Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5533FC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166466285332.8807.10315642233779417515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864c64712c6e29beaf16e26fd1162be34a91f1ce4613ccf973cfd5ed5af3c6da
Date: Sat, 01 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664662853
