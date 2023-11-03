Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2075215497
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSgSXliO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FFBCC433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699017496;
	bh=99OQiegQLFpfEOIT2SLSGwM+KSBjprx2lIKM2PZDga8=;
	h=To:Subject:From:Date:From;
	b=PSgSXliOB1sO06YlWodIWRSziQYSMQYdsAbZgV63wYXbrcX/rD86pONE9ix3fruY1
	 Ik956KZ4KHfdCUTfBClIBzHdvo6C/NnyfGiUkZwYbII1PAmycribERKsxNaL4mtOHI
	 wkUoUSPgItqB2kuLRaJzzouSKGW417ZkoGPkvJHg5xW/0HVAhaKTOrVs0f7/JoiW9X
	 2EdpV3YGYyOgOg2UhL1/Aw/vMj3SVPShDJhGjqCl27iWWwEsaMfwj2QCXNA5pb0sQC
	 m3/lUKWDhFdK0Bg8sHZCenLn5VqEbyZskK+1Ljz+fDrPBG84FJZDHJmfFjoVbx82TR
	 ySS6w3kUhbbCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BE6C4332F
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169901749641.31260.15580043889781969486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66299d94dae5ded91b9c09aa243ec35b4039e2eb89367674119aec28bf811c3b
Date: Fri, 03 Nov 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699017496
