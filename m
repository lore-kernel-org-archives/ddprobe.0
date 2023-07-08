Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EB0F7F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 00:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFE4BC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688777229;
	bh=AResa1aTGB/aAEsN68vnRk2x16IwAHyA57/sPekn7XY=;
	h=To:Subject:From:Date:From;
	b=MbouBg8wSQWVo+h37SSfVMmCia445vioEiUgrnWqnpLVytX9MJ4ayF9+KrjowGBiq
	 a8ukA945OO+iMPMd36/XQTE7a0ElBv1uCw79G4CNwsiPf2xF4TQ6iqt1sEDZv/VcuQ
	 /Ll9W/hi9a9JBo1kpFkAdTJ7bl1JujcUXCAFhr7aWoABFOJHbossz/ORjMxpnBU9kh
	 V9x71PX0ZoMPTlxDnPH4UtvuCty4H5gs2Kj6CRe1aubLeLEpz52tQPps90jt44xSEU
	 8edo9qKvdI9qOob5DCnY76HrSSfx7g3peR7GudcxGXZJy3IgjER89OS0qY7nMIkb7Q
	 vmvxQMODt5ySA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEAF5EB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877722880.27464.8206730941266035867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d56dcfc1083f344654815809237a000a8146f67c012294c90e5e65edd791b90
Date: Sat, 08 Jul 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688777228
