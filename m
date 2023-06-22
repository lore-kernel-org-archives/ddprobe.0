Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482F71C05
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2227C433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687416788;
	bh=hHg0lCcv6oNvrpjVS+tkcll+Zjp4ozhWd/PXElaVhrI=;
	h=To:Subject:From:Date:From;
	b=LZalEJZSbB6uc0tLGZMNN446xpQoa6zvbVuUZMgG6vzfPjiuMcL0OFhlSypa0/ipN
	 RU620Wt9jl6KvSQ/DpxE4T9nhl/Vo75JARPEEuRgzqCO7u+Kpsji5BuYGobdUtxBlk
	 WUW6EnUEPLtrP/TFMsIf21LYx06Hck4X0lxkyxAi2PzhIT4htnj6oNtBX8Fxb6Q+nG
	 5nk1KuqsfT0lnduPIQ0T2d0e6sqSg+WDN2tzl7I1c+zZdMaJVaisECk0pyJYCBk2pc
	 yD6Ej4RZDmOjcwHFCFxd0w77xpETn7NzP6Wpdtn9yosulIlkkaZgo1MvZd3og1rigz
	 ZneImsAFQk1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D24EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168741678867.8490.4588454724184060921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502bd0ee49d9d029b7b3c621cbad7b148e03798cc76453db7a146d4504bd59a9
Date: Thu, 22 Jun 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687416788
