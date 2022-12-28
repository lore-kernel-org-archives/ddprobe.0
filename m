Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33B91117
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82339C433F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672227687;
	bh=F4kUSCUONDAndaw0o15yEO3xtQ2CySgpr6uKOaJYwNU=;
	h=To:Subject:From:Date:From;
	b=Tdttu6a2YxNi+g12yqr6K0KjOhwK9QYeaIHTip45oVBghYc2jpywJgbxoQl98uZJB
	 eqvfyRrfM9529wFl/qI+mXO9vkqDqgx/m28rF7t3DMQlWB4jEcdXelViM+v5sB6ArH
	 zU84vdROul1d4oeceT1ummnWKpISRYfD0Uk9K/oNHVB+vnzWB+rGYHJaVNg4bIcZjn
	 vRSvlZSe7n8Hd59gFBrqH+pfyhFUXr4OCICXJx7Bl5wPsZ21sy99WydM4CpNIShgbM
	 v8c0F0gTBRKIDvbjox7bii8M1VkqploLXicbXnAtOtwZ9xJk9GRmFS44F01b5VbDUc
	 MEMMwYbuZ1BBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FD5C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167222768739.32083.12294085975368817544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9252c74967e0174ce7abd243d364e4bbc74738f85cdac50152de068f959e738b
Date: Wed, 28 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672227687
