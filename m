Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCA08BE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73981C433B5
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667921454;
	bh=OpSt8mxLYdJbX6HszshCHFXo7tZasWaZY8SOmyp82ME=;
	h=To:Subject:From:Date:From;
	b=cCRMWUKRnKCHZAaZh3GQVQECARkeA5zOEm55fTWh6ko0ESLSaXuBv2coulqlQPo1B
	 xtiBU5iar+XndYxgbSxrH78tYwIMbZ9vWUy0zRKEG7MaCGDVI2w9MNC/WVtUhI6sPB
	 o0USRFIrh77SfV4aBSn/i6Qa/4pK5QsbXSGrxbJRxiZ3orIRdXlZe+t2U59ARUyKQW
	 ZQYXEIsmHkSQGMlaA2Il0LYO0xZgLvXRl8eXQWdJNuaoGVbw+zwUFDbC7Lu3jCmgup
	 Gb2ZPT05D9eu4fQjkAEvwELzaCGjl7aSC+gSsB2YGsCCSaTC5W0scdg4bzESZ06dSz
	 m9C0yPSXQ+Gkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5966EC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166792145435.12128.2923113257569624018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6101eeda1f159bb9d4efe1167550f2db47d5689aff4f622f0cc74dc2f3cea673
Date: Tue, 08 Nov 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667921454
