Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A80B2F24
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C8DC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687905788;
	bh=FwFbpAipl7d9H3xIMzAK/F3ij78LcnrnSCUj20fj5/4=;
	h=To:Subject:From:Date:From;
	b=aOII0AEOfRPTFWKuob1rXVMsF6c/YcBb4V8OuizUafhgJZIfV65OIKtDviMrumlUa
	 ypYGpT6qFJ+mmjuIHpelW4UviS6WSmnfzqQQ0Bvg4XBRo52/I12ttN6SANEEt2PG0u
	 MgKRcKrQQffcw4t8yxPLZ8hG/ruhkynQ/dCC3FEVxuhy1AqEsG2ATYXDCbl+ohQfRS
	 RRnnOigGj0sflArbmN22gbZUDI5atX3LPkMoXGlr4OXBJQ1/mCDjb7lKEpKs3IoA5D
	 tfxyGom+CJ4hubQCKn1DVYMEOw6REaeTL91YyQPZkSRZ3wXFdiPOSLm6c4dMFVKuQc
	 e0s5vDunHMVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A2EEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 22:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168790578874.8308.9639874280909941443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08439516a2ac9da3d493c2cb029a0f27fa89c7bf4543040aa97e17be8ee67608
Date: Tue, 27 Jun 2023 22:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687905788
