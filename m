Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B16619898
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 21:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5DDC433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 21:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692308588;
	bh=o6M7vAt7ofbh+hBOS+7V721q/S505Q+wFgmIJfamLoY=;
	h=To:Subject:From:Date:From;
	b=oTywzHJzAxhHH7dHeH1f6Wzk5qFX3b/8c900uEhggX1y7D44UiOQRpBOUPGorIzVK
	 TbvmSuAjwVFteg+1B4lLz5jb4OLsJhDrw+doY+lWfJdbTfSOa2MFTudVbY9SNlk1lY
	 XpFEuAJAt2KOC1ph5qH1F4eRtKKrQJnhZyVAS+xln7axGTGb31MB4cCheHU9BED9G2
	 2E3miaQ70k7BL1Rc3SMcL9tECTecWLaeMoTG+GFCUM5YIV/AuWNtAFKgFig4fOxcq4
	 Ze/kksSuBXj0Y4O6AwJKtZCmMEOqoHNZY9Hu6CTTezu8qSdcipI1KnFNcZY21ccOJs
	 +cQA+9hSHZMgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFD4C677C4
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 21:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169230858870.6982.14406432942990666134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9524d892d3d0b980b0ff8979fa207266052ddd494943af31072448dfb67b687d
Date: Thu, 17 Aug 2023 21:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692308588
