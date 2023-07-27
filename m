Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B431FDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 10:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9FEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 10:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690454528;
	bh=HZiuoj5KR8NVzZOJ9/QPFwxtorVxAbdo2DTOBYQHAJY=;
	h=To:Subject:From:Date:From;
	b=gZu8qtqpFzmmMSjLh+82nntyHyLx05rd0XqUI2FEnDI093UtxfSe5rwrmlNJpidA9
	 pRu0wqIfQlX9hWMHB9yWC6ZX6mKSXYZTiC1yE+cNQnje61AKo8WG8+GbkHdsubyhy6
	 3IJkqkW8Ntuiev8RbCcm3nE9UbKysLpKaySDNPmujvlt8Dp5OOA5uMsQlCbAahpOtM
	 ud2q70bcSsYFv1fzUjK1DRVfvbF72Va9wTc7YxfGuZHPd9zSGD1axQ255RmhROWsNM
	 AXEhuRz2mFoL04HIxwxTEV8wrE+2zPOgWoFK2KQCNUBXPz7W+Yy86rN9LHzsPO0VnL
	 lLyOQOw8V0KYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB77C001DC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 10:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169045452870.10891.7384179571165038801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888777132ab3a67481bb2db7395f1a5b7861806af506626f3ba2888a73aff062
Date: Thu, 27 Jul 2023 10:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690454528
