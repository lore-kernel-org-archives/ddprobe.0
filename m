Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603281BB27
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 23:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0F2C433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 23:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689807728;
	bh=83oWDC5X+6BNz1nwYvQP4kwgVGEhX3fIuKfiXbo4Woc=;
	h=To:Subject:From:Date:From;
	b=N2VDTTw9TdKgWrSAZrRH3MgjMOCRLC4k3xl/PzmyvcSB2hyg5LRdWuoDk5iqWpaiu
	 xlklZonzZeyYmZYlU3mIIFwN8Z/aGl4985iX8JHFHlx8Us4dmwGJNLl3nf4fuyCvLH
	 i1ALClbgDji+ymO3ySSy4ZlOga9JyqCfLFhq3U2DJ7UcvKWf/Z/IFIZNf5QwGqihds
	 lTncBPfNP7e0RoBgRK3YWiEMqsP+CnnShiAUwQUuSW1WNJgCbejExdDy76ZO1ONM70
	 2aj7DaQFejEtYA04dKecAKiadSz2IDq8SHNnwROtPCzjY3vvDsIiAPZnfUB4NSeaVa
	 slYN603avXMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE08C0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 23:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168980772874.26018.3598604354116227199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbe3e4c9f3d17c22a7704587f7d43857a10ec3fce65c7315b369a29479293f2
Date: Wed, 19 Jul 2023 23:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689807728
