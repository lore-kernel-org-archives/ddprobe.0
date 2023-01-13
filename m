Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9802659
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90630C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673592687;
	bh=tUcJl3Du99qHvUKSa8XyflfzsDAEdyVwyA82nOE2zwA=;
	h=To:Subject:From:Date:From;
	b=Rvh3fu0P3ZJwkdGlg6HreXGxvhIQnD4MbQ/A6B86qpWFNuC1DLOZWZn6DTZkds6BK
	 Jsr+4IUDbV2P6w1VxNeOMpk+VDPy3CTjn2V7je5X7GU/6jUSXMbpN2nTfutf1Ve9xk
	 FxI2yz7DAw2VUvro5degz9XJZLhQnqmHgkNry26Ojy7TWRSvIfSMtxfut50V+4ypj5
	 klFOv33unbpwZAhYqDpBVe1R3Ud421ZigsAE36tbkmT2TWaD7mxiN5RXQT9cY9uez6
	 qU9L+wJY1Jftp8yRw1deEhCnexuRcW47O+GCZ8ISRQBgd1n130n5WBqumVNmu+TXWJ
	 NtUFalU2eI3/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7332DC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167359268745.21137.3807719667689269696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3317b3d45616e79cad1d1278204ca30c3457204f29658c851a92e2508a0d4e54
Date: Fri, 13 Jan 2023 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673592687
