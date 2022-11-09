Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE56B2101
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79405C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668019254;
	bh=EMpVDHhxXFUL1gxiLL7m+eg7Nx8sZHAf7cCBsl0tou0=;
	h=To:Subject:From:Date:From;
	b=mVBen9E7DRKJiSwHP57kMrJqPalhhs9+6AKuOoHs5TCHMmN3tea3KTTsxXafO02fg
	 scjxooHUNWZMyC5Rleb1Zp2KbORp1aTW3/2ZrUo6kv/Jbw5Pyi7P6Duf42vwgmClRJ
	 W326tbxerDasvdQy4wHYHw8vbWqTtZplolYWg9tYbdN9g+agfbM6Ue9w5kiQeBUeXm
	 skzaYeKKcm/9hw26x1jYf40Y6FPlfYa0AaVcW/nc1wRedXM89w3sDIfayg0Xw5459O
	 dLUUwNiq9bejPW+BFO9nDZqz+U+99qHKZOvERm9SV7jfgpvzLAmB0SLg5hII6x2ahb
	 ZrCqAl9WoHiwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E716C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166801925437.31698.10357849357244122828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8e9e836c475acefc4dbe9bd31a072a4ef3a237a4ce74d97fd255b0a0d151bd
Date: Wed, 09 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668019254
