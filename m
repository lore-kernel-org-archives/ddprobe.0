Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E88F1867
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF8D8C433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691827389;
	bh=dT0rNZ4gs3ocEK34Oe8KFbjGE+srNm7HbrifcNCs6VM=;
	h=To:Subject:From:Date:From;
	b=M5LqCiRVAvudAxhhvTpePElRTDBEmRm6sLqZ8bDz43JIRboBMt0+ARt7A6cgBHeg5
	 isgLhQBn5oaeTUnNVIZ7bfFDed39M//VHOZ4rbtPc42jX4ossxZUkVZZlnO2v3BFh1
	 AB/ZmE8LHiqsnLHLVGrinX4c/zs9+Rw+w3+fQZ7GUWJ6C3gxXMCMT5hoZ4h3RMoODa
	 rbnSZ5hrV7d6HpSjIlrcbOKVC6YTsDjZed3HG7uEo4zy549PWNIoLgO/S4DT4x6mBg
	 HVNq+/6qjjqwWxpdSPBSUkUfObluiCc82du5GH4xJeAcRFc6/vqFKfn0/C0PvjM5yR
	 DQhOKYPfXfbCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2BF5C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169182738884.15776.17881169133919989278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fd5a64fecc415d432e2574da948336c73117ab24fb5f6432ec2c4484a16a43
Date: Sat, 12 Aug 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691827388
