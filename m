Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727782CA6
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD852C433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691264588;
	bh=SVeBLCIVmdlOh8Z4C4dQgH382H/jyLfzKNe209E2Prs=;
	h=To:Subject:From:Date:From;
	b=N+wtiQkQ/q8WS7F64HZbk0PSvaaZcqJ0RZcnfaiXq9aKEedKuSowHI5AlM360zDZ4
	 eyfzkozxqNGTW9CyOM7MUf1cUm3enbDJ/XG1BE6Q3eNLHeJCrZ3uEPUZrthZdF2sDo
	 VAeWg/38rR3tiM4U2zfmxZkgvSCDyWJntae+Gl43vuGKm0Ctpi92THVMsLLt5o24C5
	 SKDp56ItmyRrzmdhtiXbrKV7o99eavFuHYvvVtNzIK/vxGItAXoUK3UVeNsDXJx0HL
	 UyofWsbRaqMS2StBw2x9bT0K43ZaHuk3ZJ6HWJOn9FnNTMi3TZZeSHLaZr2+Ers9Px
	 WMtRhmbLGtxEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B051CC001DE
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169126458871.24501.4666135417955009537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e411a618bd5a89673527026c14e8cdfbeca54ef3e56233229c84afd14be8609d
Date: Sat, 05 Aug 2023 19:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691264588
