Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72822638
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 03:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD62FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 03:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692243788;
	bh=ue/g3FQpcS6bPAuc0PDXiLzEnfUMQP74Ka+KYHiXmEM=;
	h=To:Subject:From:Date:From;
	b=j3Cv4hip9gl/5DhqzeV9dqsJjmMlB8a6P+/pCL2go5tJSu9NNsCuqrrkijWf8dh66
	 7ZQNnn7ZrytfGQKZwVK1S/6blmz7/AtkWFeGfSqOmKSo14+yter8fjf30/ERL6gAI/
	 P9R4jT0cZ008IbVtv90VP3V/BgRNhKMtAX7BtgpTOc2Dl25ocfjE3vX8kw+1f78tZk
	 WLBNuDgOFogd1Iavramo0MImOrEx2wdkdGOeMn9acn0joMMNDPVUC0F8Eegjrr8WR3
	 qZrq1JxDaC4uggn30X7f9SVfSnSe3QUtgXJ04nj7TirsJ2+tLoVVcYv9Gqm5jP4PX0
	 DW5rSshm18tzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB52C0015E
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 03:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169224378867.3673.14047830549074290764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8587c5d70d2027f53c93a6e0f93cccb017b6bf6fbfa9643d3b4a74ecdd4bd2b
Date: Thu, 17 Aug 2023 03:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692243788
