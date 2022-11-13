Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD907472
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2F5C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668380454;
	bh=5pXN/7rOOwfCCbz0nRLQjpY28izGdlrRbW+TMUtcmds=;
	h=To:Subject:From:Date:From;
	b=tPIf686YNmAVCfUrsMpFTc5VhiBgzCEM7WBPTk+nfgktRD6RPOZPkip52B8wW69nk
	 g7RfeBvF53UMcag+IIOjYPbtm99c8BgVieseNXmUuXr8Rd8UFkbRHQV72zwETixJb4
	 lJKN2ME0I+bYW7rOHfnNkZaszYyrxmC+IWyYa3RwH/p/UnLVTqiGez06xJTijHVrsB
	 w7TFbHqCMmYL9A5lmxfa1Hvmu2HDsKKsK75kCTBsmRrUjPLHym4gcvnawX2dxBn4oO
	 7qmRta2WvALPU5Bs8jlDueKZ4e2yvgvPXWjl7qNnpTm7Lbr/9N7jI4cB1w3gYLlAGI
	 22RQJa9Bp88bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EB9C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166838045432.7326.10342685252358421894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d72f34f3e9e51c96f5733067129f9fd0f84ec1ded361e89e952f9b64dcec76
Date: Sun, 13 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668380454
