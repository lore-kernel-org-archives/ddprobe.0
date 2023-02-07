Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B6FD747F
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 20:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19D75C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 20:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675801146;
	bh=SyZ3tdBy67s/e2NQG2/CtVyZvVOCeXpLStKzxR5rkoU=;
	h=To:Subject:From:Date:From;
	b=kgv8bTMWIpiRPydNJYqZCBBvT1EVMY7kdvj7DuuX/FbBQDkuodXwB/1bGLM/nXEfE
	 Yriqs2b2VDel35FU+aKWGGq7AEVHfdyWMypgS/ahMpsdAGPx+sggH16WQKBM7S86VR
	 ciBO+24Vp73Zte3eb49HF/MIcXqXNowX6Uqe2WkpTCEApSwcSipcNMtMl1eO7NGDeM
	 eX07CUDrWz0W0l7cDNsAJ/nKw1SjpB6uskK2YPQy9HLRm3twaWhALnWIdBCSgV2ZHh
	 qWfVzvEsOOP5s7vKjPrYA4snl3r6fC+SNs+C6G9GluC+dn1nQOLJB97buZKweIww2T
	 ss8at3zM23bNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E92B6C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 20:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167580114594.9833.15703844922424697474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80def8f6c13e8a3a3d2d4e1746ed68fba457eed2a4beb65d09ce50bc2b3664f6
Date: Tue, 07 Feb 2023 20:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675801145
