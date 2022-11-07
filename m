Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC76AD531
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64643C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667836254;
	bh=ZAiaB8U2WrvTT6CiJJsgV5NchQxEuCGZx84mnJH/HVQ=;
	h=To:Subject:From:Date:From;
	b=aMW5cG6ZN0ZdCcdgA3gf9uKdVwVKGWeoTyU0R5G2xAvCSteMmm1jXKIDzkFLX0jVr
	 trf1dL0aJVxVhQP1jO0Vt67+7CF3YuZmO20tkvANTpZ3PLNzfBRc0e8YCdAlMNIipp
	 QoXSCO2/ssRCvU3BdU/TRHbIhrXwbB+OdSI3jm6dLNPKnJtJVvhomi4LRjmFkcwWT8
	 Mnzm6a+lyCJ7DQxfCkguOd8LQGyPQCr0yKUBzxBfFdudR1fEzRNiwMTGx3tRkJ3lqt
	 U6/6On120BPtS1MBc2zX7hfoXwXv9h6rwEXr+2rnxpVrzVOQF0iYcNWHYW2K/fnhMR
	 9s1ayCzk4t5Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E3E2C433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166783625431.14747.10483265799528609678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d0b953c5bf1a3bfd874d735b36feb226a56eed15215988eb0198c50213813b
Date: Mon, 07 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667836254
