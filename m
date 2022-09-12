Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1BC07F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68789C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662957653;
	bh=ea+EI6TO6oxmJTotwdRg5DFMZemwxKQkEygpTC3G76k=;
	h=To:Subject:From:Date:From;
	b=bT8rG2x2GLtljLa/IWKAS1xIL1zXSM9endkeGwXO7m/p42NclyqBz/qflrvpktmwB
	 s63sezYWpvZ6O0hCNFDf+1gmqTQDochGEoITtpbd3S4GWmlAJ3GAFYyt0uPlsa1ZXN
	 K3ZBayNjao2CHn5LWiswMdpsxRPoMrjhYyytrFqDOBuidjdpKTchFCynThod1oHEWA
	 CqMOXwnN4w1qJEWNJb+fEV3AYofoG7T8nejoqM3WlHT+s/MyW413F0DTABNMm5j2GQ
	 gZja03eOOZ8BFX/CeEivIgM79iVoFOaZ2hpOLy9uNTgaYvyKguICwj1M0ivbe36qcj
	 NEMqwylprkfJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547B3ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166295765332.6907.3583846030490162529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01a5799ae8802f755fac35995bd760518633f0d36a14dda506fba14ff272f548
Date: Mon, 12 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662957653
