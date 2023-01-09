Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D4A2F21
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807F4C433F2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673269287;
	bh=NwfuW1cKKn/M+uKOvFGabtwe0IwNeeUFNFiHS5hNeuk=;
	h=To:Subject:From:Date:From;
	b=bbQ/1UJQi8/vCK1YI8qLMe/vvZ6jPompjiwQc3Zc9eO5VDfpSa95TeHFZCmVzcMsJ
	 Y/LGCFv0Vb+YMCiStdR0z5L3cDTJvLKvx5XDY/0YEyB1Hp8HmgkW+X+O/ArvlS9oaJ
	 zVX2ywiJD2ROdLda2Ze4co0a02JMBvWkxcnbzgys4j7JmQpMPnPUuZWU0+l6rTBecQ
	 1UfSGxBW7Hr0wQj8l7nFQd8AXCaF6qbqVaIdeocl2+Z5XHj51ZAAO6pnMPI2805QCy
	 LLZEhc23mllMmvixQNJ+Fgjut9VrROmftLn5TLpeRmNt5gJKGSGi39RoCBHMYKu8GN
	 ozS89tPlmgJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF40C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167326928738.29308.7639538738957474254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba85fc0630153e66c4c34e21ae86b64d242953cc053460160690c5abd9f54b7
Date: Mon, 09 Jan 2023 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673269287
