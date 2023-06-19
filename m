Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DB34C92
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 00:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D065EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 00:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687134608;
	bh=WAV3xZCwLNHW1hN87Kn+X3GJkHTGhrLayXZcc8bbcCs=;
	h=To:Subject:From:Date:From;
	b=hmBN+hss8qOOW6/vngCxp3ECMbLvVHz8lgYhJF7PCrvVyPVsseyvE2DA8I6sr5y4M
	 jFSq/FaY1wtQiuNGClxN6Ed2omEmPWjK0T9uesEwJMoOfgZuxGuw8pzIT0EgiI4+yT
	 v7q71HLLpAk3TcoTryobmyyKmqRU2z00BmySbcuoKCfo9XBOf2dTtFvBAWXqoZAyhr
	 ApHBHJaSsch7Dfx2gNPli7QkxYeS8pTO4aGM4dSWFPf8CV/ICDSycGRw6/kn/b2lwm
	 V5peVF7cc85jkYgrazPZNZ8JggbVVp21BI4A2DVtO8Bj2Nj6RL/wahdU+rbcpSh7dL
	 cW4Eb/5Z0Dj+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B165EEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 00:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168713460870.16029.8841919548078569035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e62186d4966e3992bbb68ed16c26b65ec640b7499645f3ab3eaa4dbb30dd249
Date: Mon, 19 Jun 2023 00:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687134608
