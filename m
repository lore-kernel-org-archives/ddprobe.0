Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D9A15A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DE8BC433B5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661568052;
	bh=lWpTkCPEC9YNSLd2jxgTmgmUMJ7K5rQsCTMbYU1MDKE=;
	h=To:Subject:From:Date:From;
	b=BfgEhW034++VMjd7MHxQMW5HCdIGABSueveuAij86TXAw4rz1v0XdCCo0Ju7ihmPP
	 nCRebovu2kjZgnZHfDV69nZd+no5ttpjb5ZcvrxAaTlNkIjlNzuPcClG3V7V4Zkud2
	 C615M6SFrZTWHF+i3B0e+pQQExpNJuand3PPrW/IUUy2F6jmTvk6uY4YWkTbOY39+g
	 OWg2ZULHmoVlOY5D+1UOb3xb9vZPNmI8x6baaftKjAT3I8gY4rISyRjHnEjAp+I47i
	 49svPiDSHedbyeCtoiH9Ps808Sb1g4+A+CFbYQF2gx/v68nSkhP+jKIvbUUH7aNO/L
	 AQN/1wFXCJXkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BBDECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156805235.5504.16593979337504718235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154758b5efd8df304f9c634e65cd1757a86a634ff782c153dfdd17e09b1d2b16
Date: Sat, 27 Aug 2022 02:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661568052
