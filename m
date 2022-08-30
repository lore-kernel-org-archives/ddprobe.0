Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69625C94
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65DDBC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661890853;
	bh=wB67DTIEXGjJw3UxA3pBck8wUzftoNzuuxflh+w+R5c=;
	h=To:Subject:From:Date:From;
	b=OREzGpcPZ4l1FqfJwuL1YYkT9wbj2bgPcgZArjkAWKPWy3OwivYZwi29dep+StbqE
	 llzC7gzYf8ScLPPISjUViMrnQAJrdHDyQ1CK0ZOpgg6ahqABtYDb1qm7FRIXTDLwSW
	 KGBdgC6Uf/aeFkrc3mXK46GdfnNAy2EVBCRtd8CD+jk8SR7CksbuoH6Nwv1Pr7TN1S
	 XqQQMUNXJNZklF67r8oHxp6jDtBoXg/EAW/Dh86GwllqrpmhvdJRSpcK6FodnSB2cq
	 GjsvMYRyTZMTx0pqh1l+0plxZAjvXY/qIb8+VV2U7i4UjhvLR/pdgbmlfYYGld5a3/
	 pU+mjRStNbpvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50B2FECAAD5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189085332.12782.17859695082014473692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0213a3f18ef7bf4e2078bcefce1cd0c91cbff0c22f8b496150701cad50cb53e
Date: Tue, 30 Aug 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661890853
