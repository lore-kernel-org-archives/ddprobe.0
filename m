Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFFEB7FA
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757AFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662813053;
	bh=Oq8+tBIP6P4C9hwFYSZDB2RL1i8/BrQ4DSDPhmJ+Dbg=;
	h=To:Subject:From:Date:From;
	b=GHY6b6HzQykWu8jN9mRb3IGIkhzb6DgLCTEY5yF5+Ur0VQl6xITmi22zrbjnzUIVe
	 NWQwYrin3H37Gc7FYyenThuf9aj+IPiYgrU+/R8t+C01rz1R1ac2ZZD+BnIcJx/2Ur
	 gSrxj63TFbW/I2Hez8a4FCSClNK3kDZdLP3xo457P4dQcBMb4DTP0B6c9aXHwqpm1+
	 tbVJB6NaIAeVJDTEPaJA9sNy2lBVSvi8S0PhInB/VGw5f+mu6W279u9TZjfFPjzkJV
	 +1vwcZ4Crt+jHTvdusvxk8tK2lWLHrCA4ZE4KNXteWucinPwvn0KJwVAvFZydWJlIA
	 HMb3GysW35X/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56876ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166281305332.10450.2957920050502108242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb852f7453f6299b8e4ddb1fcaeef6486cc5580c71f4c18d0a080ebc2a00b64
Date: Sat, 10 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662813053
