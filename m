Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445B17C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 04:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E89BBC433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 04:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682310125;
	bh=1FrR3VDiuBGMoW0sgPaR+ftZbD9xi3kl+Zuez5QmyZw=;
	h=To:Subject:From:Date:From;
	b=Vl4+ZKTxYRdh3jNJrpJOEzEL2ilExMG9nJwpfHyrT7JDV4jm6nNhm/0zliw4yltU6
	 nFGXQeKWeL+zsHONTly9gY5RveqWwMqL6wDEG0uB8sJ8pmgOuUsFG3zLd3t1L2c/Cw
	 MFBH9y2wImdZnkJWNgy4VynPWWF1lrx4t/mXkhnnm3q5EeckpiFdcst4Pl6h+cJt+s
	 2GB2BeaUy74KzkQdstJFa+DaHcnmc27O+vKCbpSeydZivmAi1ZtTr4ywmrLzd/BFd4
	 W/QoTToV4bznZuVRcVFyyLpZKtQA2Ik2IfQ6N8lI8ldUBZecZAoDE9aQhM/LeqIJLg
	 ikWSvTl1IIHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3ECBC77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 04:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168231012579.4532.9716050042809624832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c912cc032d9eb56893c1b737e4a5c5c6b7d03033b7c100f23cd4ab052d74fb8
Date: Mon, 24 Apr 2023 04:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682310125
