Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3CA23AA
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 17:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74B4C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 17:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693763648;
	bh=+WtIgRcAzHIpH63tE6d67qdqWml3eKR9+2ZGap3DFvA=;
	h=To:Subject:From:Date:From;
	b=jRft45OtTxUTXvFLWFYhoukOaQjTSFa0GuXhmeNfT5oimM/7BKwag4KpXsNR3P0+q
	 Q51bVB9aylJRaWhWWAK39v0SEPlcYsriCqraOW9AuhJ/AStUHoloMPLraY9quzrgp2
	 zOrKAqeGMss9dK64O3DBWi00VrKdlDa3oGXkmlWM7ygrI0KiOs6TcYF652Vo+mBHT0
	 AYtZ2kWhBNMvYslpXf5ynBMPcH/171VJ1nuu5bk7fYrMGJF8ff/Kgh4J4a0DHrOkiu
	 k5NV4DE125GZQApYc6PHM1uND2aLtTsbMWNEE1rTjmfDSJDSvIz79mbQik2tC5Wkcq
	 CmcLfwmlpCmDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5CBC71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 17:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169376364866.2513.13880752823265051466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829d4023f5ab8b82ad9ef4f510f7d91081db07c15befe807dbb8ab54879c8dd2
Date: Sun, 03 Sep 2023 17:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693763648
