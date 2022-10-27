Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3CBA10EA
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B61AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666836054;
	bh=PGv2u+2C1+16jN12NHyyoXyW2vHfLYxCtHQOeFgI+0o=;
	h=To:Subject:From:Date:From;
	b=CUHBONaxNTvepB1D3nRgKDqqLtrcDUTiJ9n5BulzphIxxiKDhFSQkFdplEWK5hI+a
	 YA7elytlY3r+/kh9l2vSYuKsL60bJnn5gpzUt3/DtbUs/SFhQXyBE3VDftiDngleTQ
	 ky5Q2pXPetCFXOPmQqqDC3Ubc2PKV3BygBOt+h0Xc6vqy4GXeLUAEUh3A/S50/2n2m
	 Lbk9v1VLKQ/zLeWBieQrrvMdbnT4Q034+NJ6AFeuzH2exqM2zbb0YH7C2f5ABX9xPV
	 3FFBGARfBG61ZbXsR+ZsAVV0bhD2iFxu7gYrbK8QZXeJ/WCfKq5fJk8spXFq0QO7lF
	 fH577zwnaoDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F88C433FE
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683605433.5764.7749564462552597572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5324c52f267149e834280d4370de35706f5c706ede3c534c3a1ba71bc67acfac
Date: Thu, 27 Oct 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666836054
