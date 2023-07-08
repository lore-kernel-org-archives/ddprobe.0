Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775E010E3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4EAC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688849228;
	bh=HhzBzMcVtaSkZwx0OuE3FJhWt0o2wmHBOFdjVPgdp2M=;
	h=To:Subject:From:Date:From;
	b=f/D/7impG1XO7Y/86yPkq5ph5bXnacpFxax/oQKvcB/E6svaDURAwUO7PATCbypUh
	 OxK0xoh1ThpStHdOP2ZFTGPCQ/c8+OQKxxC7LMtsc8qqcFTnlmmXfZVVR8t/6P5DOs
	 pVvIkNudLRUwOF11szQL1INKy7l8+Z2v968pa47WC32ruy7N9pYo66lL2TZsYmUwit
	 imzcZj75L1+5EPB0qgDTq5f2vSXGKtnJMbHj8q07pWVCv8oSDrYO5xtDCPXR6xbp08
	 IME24E3DcwmgOPhM+3NCZYnn4HZdRj3lses8xlH/QupWeBtoFZlCx1BHpTJ4mHPouI
	 9ugyvT6yKDIFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26E7EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 20:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884922869.10840.1495871456022908915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59333b3b11e4c4eef3c6c9b222cf2c1a299e0b588ae155c7b3f150fd5db325a9
Date: Sat, 08 Jul 2023 20:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688849228
