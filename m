Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C816566E4
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C2FDC433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663782053;
	bh=RUTH5BtrtOJTWH2OM3aXxAvBSfXiNi7LZWSE3eFBhro=;
	h=To:Subject:From:Date:From;
	b=s+AFwxA0d9Hapt485DWqvP7HiEw9/K+im6f16XJWxksY4+/kCejAwF+wW6cKpPFI/
	 DVuosTVMDfvjXGjb1wYpukQAXtuqFxrHsarNew6hjatdXTINU3NDl6bQU6S+Aa72VG
	 Sm6n3Lm4HboN/tZ20SlNUsXoUmeoDQMnUk4RX2L3tqarhRHECeSlt8mD3fmVbymCyV
	 ri7KPpPf7bqOmva4hMb9oadjlOkZgtC3OIDQozjHITw2EK/5Ex/A8pRlmTOod1rAa4
	 iy8yTBZwo+Zwsss1AbOY/Acen1oMVSXfw+LJJ50/iBhKboaUl8ToWAR463oEce+Wfj
	 7gK4+HwKFZJQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5833AC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166378205335.16482.3234253093855575762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0acaf007ce02a624902d0087d15538dbaeb8397638f4fabe0853949a0c619425
Date: Wed, 21 Sep 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663782053
