Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBD6622
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 04:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03BF6C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 04:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679889726;
	bh=TAxUKs97J9psM/eO79+wLlPA57rSQ1YVNliLtizkiVw=;
	h=To:Subject:From:Date:From;
	b=qzvgZiEfj+pVGN8eHGi39+2zdlkF2bBWqlW6Tb+IPokkD4E+uEmfd/WwoGc66K9ve
	 pBX175PdTBwIZ9TLfpANde3k16NEImp9S79RYHl05lmMdmJFzoBvFS6SAo3umbPvkR
	 gkDTrX3M9mVFzbmnaLLDryaPMscO0xalzGQZHwsm7uj8AQaX1LY2ybZTOVqy4H74+p
	 MGBqAtA31pVNkV3Pc0L86Z+JLE6F03rG96Ou1IAxuBHazzNEA3b0PFWzG10aLOdo3D
	 /FZ29q6fJkW5beds5knq4jxHAr34i4XbzIWV7kMA2jV44pIPNouqQcikQogDOXH53b
	 RUh0jSTr7cNrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFEB0C7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 04:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167988972583.22763.11335449826816163190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ce1df75cc8e8911285cd00f20b944cea5a3b12f48d7e551b59b8fc49cbda66
Date: Mon, 27 Mar 2023 04:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679889725
