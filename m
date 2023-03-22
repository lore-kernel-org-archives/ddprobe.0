Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB2B23AD
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 09:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C1EC433A0
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 09:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679477345;
	bh=oZzv+xmz8B3sLTxMfapTtfqrMzMlkrCL5NaGT4gbcYU=;
	h=To:Subject:From:Date:From;
	b=E0qcr7o9EvmKmciLpVRf1rRj+T7QzOcrbfy05EC4rVkB5/Gobo4faD6/xfMtivc2k
	 sRM8yPGegID9UytRiy4C58VK3BFHdxDvp0r2SpSXkBiCorga2oGW5HtdepJ3lwU8rK
	 T96sTNWioU8X0UE2HZiNtKgDIy0jpbLjtMmeI4d52+02RL83GrRpGYrWmDDPgTBgCq
	 RzMzpc1FOMmSSKwvU9FTzgpP40q7/Q2zl0VmvB853MthRtaUm7sE2UQQVdHVTwpdFX
	 gXdFr5730SytZfkSH4cXt5BQLVZ6wt1pBZ1dPz4sT+aPB5TXKnsGQJ54EHZgtIIUoM
	 cOtBmOXLARAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CABC7619A
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 09:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167947734578.14321.1645547984100391580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ed05320d7060ad4e8da740e5f77b0c06c985456c80370b8ea2eff4500336c2
Date: Wed, 22 Mar 2023 09:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679477345
