Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C428A5C92
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66212C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663594853;
	bh=TsptMWNiLZ5SWEl6lT7ELoRV2kiMyHGVmv6CpsEawgM=;
	h=To:Subject:From:Date:From;
	b=K9/TUHIHg/dZ1ipE4lvpOrfF76JxYxXHdajHZDRU+6Cgfu9+++LLau1bYA5fE3kiI
	 BXgOUid6Dg9D6dN21umnPA1859vjDNVXUOfwcRTkOoMh3C7Lzyw9Hi9eo6oz15cHtP
	 Q9MSzVqiq42ex/EYjEHZj3rQ6VkYMiXoitlKUfc0swGSCypqW+8ts+XNf4Qffii3Xo
	 RZZg5ibQ8aBAKN1hMSG0cmrd/3g6vo2Z6q7+YOlxrTiy9egypsXxO2uNZQtnecxDQD
	 LWLRUpBmqjfcs1F1Uw/XVm7OIzeH4mxAR/KisffkTkgJZE1xevu/nSpwIzsuO4atHf
	 9U/TAsvUwlMdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDBCECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166359485332.27913.4977150149764345056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b713e77dff1f786f49a6f512aa8711496890a7b1700881b2999c0217e3dd0f7
Date: Mon, 19 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663594853
