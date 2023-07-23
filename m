Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBB2EBD
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 06:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA71C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 06:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690095128;
	bh=UY/y6SxR1VZEP7iJFOBK7+wrPPSp36v/5vidORaWCfk=;
	h=To:Subject:From:Date:From;
	b=ODDnidfI1TejmsQGEe4seKN0UaRWMmO8BA1gD29KYqnn0VEleydgleyE4+SiarMqN
	 8GfqdLmjmzcWmPxjoilDJOlAP0lde8FwmKk5i3/kFfTVad/rI3L5XgrzcPXaumETjn
	 sBY56viupp9UueAjLyNO7sfTMd8hp05+i/EZb7447+k5dkEc5eETKUzNfeDB3qbUO8
	 j6xghz+66p6uk/FopbUHuj+a3frNFjR5LpOlXb3ivV0k4ObACTiH7ldsC0T14CwaaT
	 o9cpcnbgJwYGXkRu07FCL2zhOV2EwyejXpUcUBSP4+R9Ee2Djj37isAUFgrjNPWddf
	 4ZAxyGfyJGH/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8DAC001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 06:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169009512870.10812.13958730211131106623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56b11ede704c70076b21c0156fbb1bfef0e54082609539489dcb4994fc19d733
Date: Sun, 23 Jul 2023 06:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690095128
