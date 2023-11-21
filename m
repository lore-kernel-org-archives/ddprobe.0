Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2AF54BF6
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQWieW4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81EBCC433CB
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700609896;
	bh=gVHh6XHXW/cJeRrqVjc8QnOx0yRAL5FDeeel8vOlgzQ=;
	h=To:Subject:From:Date:From;
	b=GQWieW4G3h0uGPimYyjm1JR68Mtt00NgARyANtUspJWUkRwkdjbNQYHPRjimReu3m
	 Zav7Lxdv6I2LxV/nJ3FM9Rwpbe89rziADmxuNO7XN2V9g+RMZ0A8rTqTykB/e0EJ79
	 +XGxRQfHS3zZ2ss3bxQZ0zuaFUqHjNL/Lh378FyLlsAoDWNhKGS52TG3GypPtVORfg
	 jtTyQxyNLD5S5EvSvBw3N7eczaciDok0rHhOXDI0eOQc8IZyeCgFHCNUJLSNK+MK8J
	 M86VnvSD7PpvlR5eLKRlh8lbN/rmJykqzT4ahiW8XhlSpeVMKPhgmHP/25iJT9EDRz
	 lzB6lhw5E+CaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D9DC61D85
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170060989642.32462.9442740703409428932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc35ea3bd8a57dea8275c5e11a453bea3bbaca2df65d43339fff15265d810a21
Date: Tue, 21 Nov 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700609896
