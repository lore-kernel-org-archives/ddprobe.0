Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF347C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 03:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E545C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 03:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661744452;
	bh=rZ1AwoxEXKzrF+XIJZul/dFNGm5z2DlDdnQ+bW4nwUo=;
	h=To:Subject:From:Date:From;
	b=As/HkIHEpVJPXzYDkUxrN9ClnHdHKolTFXfyunV7uRsEk9cJTrHqBXybiLbOQUoXj
	 jwy3c61PJcjB+rFk/HvxKJvulanJDC8iZIYHCdk46+4PIwsG6gHrGNr8Omq0PnL/9e
	 YZCvxCvgf9BW0KdYYs+F/R+M7x5vdGMErzfN8Ugdy3le83Rzm5OPSASmWEUFtD4iKe
	 GVYjANHkqihDrwHORUTfjgbBGERqV9FFNgHftK+EUdvwYvkMTZ52/6tWyoOISYBfAf
	 ZAcEsa2nqfpDZreOEeQKR12Jg1HD5L2+T+24VNGPTDS5wKy1IDwd/C7q7hUIf8i6wh
	 S90lR4gky1DZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EF2ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 03:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174445233.26706.3645568379101119870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc53e00d40a23276896623a3427909b061b6f6f607309d3669382dc296dd2a06
Date: Mon, 29 Aug 2022 03:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661744452
