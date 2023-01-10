Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4EF3214
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC84FC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673343087;
	bh=vb67wiaxriRxXtZqFHs7S5To3h5FRPYoIZHx+qzYpro=;
	h=To:Subject:From:Date:From;
	b=iVlBuQzVTsGlwQxNa2+LSJhpasIVrVTUmildm3V9b49WTwLLKtTIwELFwHTbdnvye
	 EJVjB0kXM4Q8D14kDm2DQmz/kUfcy/tPfDWeAiK9Ngg8GN7b9ws+VGQP2bEWzTAoBF
	 jSkD1Aybkvs4lJq4zD4Oy1louG16hwZrEWVnP0bC2xhCGRj7ozSRZc64l4V/ozoyjL
	 6SD+rpuy+C46B7AY4xzhsY5UJwPe78MZNMNvMBird6Hsfm8hPWDxgPGOMG3Z2Q/k4U
	 imdJDi6OGRCOj9kJEnbvQ+vxZQQP7ZMgJITSwBZH2mJHgyO6bMPH8raWNtYElqznlB
	 ZWd/RpgHSsQkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94158C46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334308758.5215.17811567068995497111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a511ad90deab68e96ed98c64a6832743bd83b11ad2dd95d764c23fc7eaeab5
Date: Tue, 10 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673343087
