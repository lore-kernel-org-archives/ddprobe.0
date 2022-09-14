Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F622F23
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8EBC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663181453;
	bh=+1eGiQdSupNX/HapAG0XBK6BdOZWPi81qrEUBw862Ws=;
	h=To:Subject:From:Date:From;
	b=TzyLd+49E9PXY4yQhMIcguxRRZvq2GkkUmJB0PozySP1tgsc7qPFVW9NS39fH7UfH
	 CbLS2UKg52fyZslgtV1p8Axy68nYtSS8/ADHaxalc3nu5Jw0R2ps8bV3XORmyl3+nt
	 mElc+x597DGrZaGKiup6EwcXS4mzPzEWI81mqyhsqsfgqI0bbZ5Z/xVRom49prSBFR
	 TQDRtM/lW9GSaXiv9E+26XhrWbogQ09gBgZfEo+KmafwAFvBVzQZNTmyOPn1Zo/snM
	 zZ76z0Fr1ZpBxX5ccsShjYSG7BSCWv9TABQp9rEYEtWsE1rxLr3Bvt+Xqp+49uCWce
	 RXPnxY72wIOag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5436AC6FA82
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166318145333.25599.1502965763665261380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2b1cc7ef326ae0857ff8cc5e45d403487c33b1bba7ff80d8b6e0f76d30b5495
Date: Wed, 14 Sep 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663181453
