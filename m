Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88505C80
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 17:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A3FDC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 17:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661795452;
	bh=y0RrqbXTLVyK+jeaJHS+7cctszM7Bsh5ZSt3fLkiT2s=;
	h=To:Subject:From:Date:From;
	b=OUnEh6cELcFr0AdnyrFqpgu96xy3wmr4uftPvzl+DgUQOY0WebVST/K73NvvqYD6F
	 eWADj/6yCW3K5J/P80bcHMxd73E7CHcBcewNWECEHrd0u8sj/QNieWWWt8y/ui3YE7
	 2mLQ2Vi0CyH1iODMnLVhR2koyeitwivVzkTtaJzGYizHfh8+jrZR2ls/VldrPM1Yz9
	 9qhFALWcZnj4fTmxphAucfD3ZsOuIenpeLptZZfXzGN4p2KLCJHPX4Kc+/NLk+TtUM
	 kca+82gNLY2uuYBWsxuKupVe4555jKSWQS/AeWZIvO+T58AlCLatZzaWqu4TIO4hMU
	 PYG/lwJsofLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6DFECAAA4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 17:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166179545236.24563.17770114769110093364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc8b2ad0caa3d9282f1dc2c353346a94f8d0dcc8bf981467ef6c39a10e2e4dc
Date: Mon, 29 Aug 2022 17:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661795452
