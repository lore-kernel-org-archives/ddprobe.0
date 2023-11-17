Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E99030654
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZF8w0Qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E9E0C433C8
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700253496;
	bh=J69bHClhU/rWmTa7sC5S2gjYYXa/XKAFcfTZoi0AeA4=;
	h=To:Subject:From:Date:From;
	b=OZF8w0QaAMoOUPu2ty7p4rfyFPhvJW5eHf9Nou0Ro4SD0EH5W3ffYdR1XQJpiRaKX
	 jj4ltIs7gC8nCLFYv48j2bUXYi58SwbyDO58p/hEDA2NRuLzhANbureaTjYlqi3/mS
	 VQKhmZu22r01U/lraG7ba33MCDNN22J3CV/n5W6Z6QxwrglvgXJa436pSqI34hEzNS
	 9p3exDkeBL4S42iacWEseUzz9hIUuy6vRwQhbX/YcbvupprhdPJTVrlsH3Jwu83Yzt
	 HfJKAaFtuGPvATLjVhl+Jre0GSFqLjGCV9+7w3QwzpGbfscr2KJHUXqeai8R7Y54yd
	 fhAqT9W+HHBSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F90DC5AE4A
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170025349644.21274.5366897101259735502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2772bd399d4b6052f3f787ffa991a21398925985ec86aa5eb24a4e3c1ec428a8
Date: Fri, 17 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700253496
