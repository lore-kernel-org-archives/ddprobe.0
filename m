Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B82B290B
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 16:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A70C433D2
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 16:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685810285;
	bh=G6rqS/QapIoJsaxVOPCiy5D3Q1TxDWdUT4ttnq5Y/Fo=;
	h=To:Subject:From:Date:From;
	b=DNl3fANCdASY2LQSmZMnKZf2UanK8vyiF8rlp2+rTSfDhxx0WrKBXscfzkx5aPS+T
	 XJp7mo2LH/8Ac6bGIvnnnLFmPS+KLrNmzVAlIJwXe5CSZG64iVs2AmyEmKt1okh3yo
	 TAE8hbtBQ0rbUm7PkWwwqH1Ae1MNnf7dpjx4rPysWWriKB8f3JEiGZXm4EMofBgNMr
	 Ic6/wCLfLr/nN+A9a0dB7rTLBwBFliavQS5ZGK/WlsCfJKqJlthBg6qZqUXvO7//tl
	 uzpPtHt+0fsKljhjR9AhzLbne1jvx0AlTj41+tdjDmdhYrbZkVOn/s4JbBJDKiQABa
	 cZwng6auOYWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3831C7EE2D
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 16:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168581028578.15869.942294691518520635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37762391b8c4c22b84d8a4ff779cb3bd0cf0a8e4a2ad4749069ef8dc7798204
Date: Sat, 03 Jun 2023 16:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685810285
