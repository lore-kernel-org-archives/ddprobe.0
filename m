Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9CC168D8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 09:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FEDC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687858388;
	bh=5QoqmbAF0DymiDfgkIC4Pd7rlBdENCiteFfX+lb+Lro=;
	h=To:Subject:From:Date:From;
	b=a3qVAOnAwwUclZKmb/xrIGlsTY7kAm0cYLB5pxiv9MDR1FgFTT9JljaBWD1p8E8iC
	 iF8YCPPfpXm0ErRW6s/6sDDqEu6bcsPMmYGOC2I5/HF+9L1gypJ1uW33/FRf+gnGHb
	 tsAJgf7byjxhLS/hqV4pt0I8xqaAWmBIy8+ujyiGeVnLFnqoQ0m75c/KFat/vkxNk+
	 wyvn/MtU5Xfc/3zkcjZwu9OD7KRbF1iuvMuqIG3ILRFhdXc+5NvQnaA7Y5ytjUhufS
	 RARwUgrLFX3vnBjkIGTVeT/hM5eyhVT8JTInITLRfO+zwZG7upsAFXD6zV6ydZDzzL
	 60XnYQJ+UoxWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9629EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 09:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785838868.12260.10747541082195432437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ea9ae549075a492e89047cec542b6940ffb9cde59b2ce6a8244fd78b174062
Date: Tue, 27 Jun 2023 09:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687858388
