Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7EE72F2A
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6951FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662996053;
	bh=7iPIgTbDstRrDGLjIscsFOHwRoTtQrxnCG7JAi17G60=;
	h=To:Subject:From:Date:From;
	b=MF7ASbd9EQ6lzoVwgw8Bf1PuGR74oh5qvw8Gbbuabf6vk5uhRug9k8M4Z47103VEY
	 e7oRRkoOjXErXKt9+gg9ygqrd9bbvfY8k+GoXugPp316yZtFw4tBLvh7IGVdHR2v23
	 GZ5l8v/gv/01YxMsN+p12eaEnF1cChS8tnK29Qn0Uzjv/nfHNhIvPjePRDZc/Z9WkB
	 ongtbPxOoOEUh5vfnvt1VE/fRAh40a/VRCIosI15B1TI8IBg0AwT6kGmkxtHswmjdE
	 aH5pSvwc6qjFV/W2epdFwWeyTfXfoL/CAt0ZFMLZUflunkibvPB2U+v+oE9Ke/xT7L
	 Hk1Lh+fDMRuEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519A3C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 15:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166299605332.19323.12316634147999719500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5e3d0f58383d08e98671bdcb9cbf321dc1ddc660c6cf8fec2c83ab79d9e729
Date: Mon, 12 Sep 2022 15:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662996053
