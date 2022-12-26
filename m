Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D974F2917
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85031C43392
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672078287;
	bh=IWebzCBkIYGhqGhL1kKkrzZVYn67tp5NtqkGjEgJKI4=;
	h=To:Subject:From:Date:From;
	b=VTNZgg5hCKT9bl4rYg/1wJTGffCGSrVXHQdFyd6R6fLSq9iWQR4m8a/avbSPNDxOR
	 GZzd5o3gLOcvmr2D2aJ1oqG4d6aVbZ218ZqJqPvY70tCp8LHVYSR2o34ruIVI/lc4d
	 pQk6FH8ICUYAfQ3Zwz2ta3tism7tTZ9FiuMMkQ0Mdcv/0GizK+A0vGmivLArsm+CoT
	 6sMr+G0u52y1agXl1ioDHYg0nvQKrYG8w290XDFA2Om2Oj0B8MBCjD/iotco7f8ajJ
	 irE+1k4yWgt2vx+RlQd+WpFbuSQ51gVDxcCSVGS5/LlYQLs3bJt6xfSkF3NkeoaTFs
	 QgI93SddKSsPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6736EC4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167207828740.27083.9343097476267242573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6d69fc8dbcc4f2c6892d049e68083b8246899455314a201a01d2b18c4a42d8
Date: Mon, 26 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672078287
