Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F957E5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67EFCC433D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661988653;
	bh=QxhGvcv3Xu5pk+U0ZZL4MHEm+AqzV4vPtCR4HbDXsL4=;
	h=To:Subject:From:Date:From;
	b=lbbtAurhKsCMOWHM4RA7UQ/GuiWssxU8BGzgtH7VU42ZkoOwLeteomDYR88gG7r6V
	 hIxzJF2y27OKHtGTwI/T+rZdbTnsd0ngPtaqyJjB0Wjy77icYIk4JdYZnuyPXCWTvk
	 8bi4rmuse0t0aHTc1krp//mioOq3qu5k0ffHlrSFuv3/O3bFaBjxdZRWwLQau6kGAY
	 6aqqoO8uqIWu0goKtWvoBLWjq+GMmhnFHNC3keNEwMVj2hA4Zn4ReeOsY/EGzhMXyX
	 luTmOs1KC2JfUihtFdQQR5si2Fn6CKp8Eu4lB/z1KLC/XFN6fd/ij/FMLjs+lQxcaz
	 tZQbc7VMF9XSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AE5ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198865332.1217.16284956537309346544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc9deeef1f3b805b4cce414d38483fcec5ef9f57b0bb7f2967ce496756c78f10
Date: Wed, 31 Aug 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661988653
