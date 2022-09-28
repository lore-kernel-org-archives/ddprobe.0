Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B985381
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756F2C433B5
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664398253;
	bh=EzTnif6BCygeI+7U5EPGGG3Qb2ZYy6OWKaRj2Lfkyog=;
	h=To:Subject:From:Date:From;
	b=unFYTnmLvwIEQ0hMQf0yKiUEtoatoXA2RVbiPC3lszDw6iIaBX4M2m8bRmG0FWwvY
	 A1NS930TPhRtmpLO8DRmvG8ov6ob2fR4E+7SA8m5LDA9xgIGWzs39ix/KeVcjsILe+
	 AfdE1+MChos6T8PWF+ORLeNWARVcPTp5f8cgV0zv18RS5tUy/sbFmCu1N/n1utS5yS
	 I7ndtGHD/hSSKZau/aGWSlhbvPftIdP8Z6bhJ+tobzCXOIdegRRumqqG4JSfKxyMy6
	 kAihsN1OAHbG4k3nRZv3h/nmhhYuC8ZP5YMPCm56ED47ne/A2nLMmDyQiKzLjJcOU2
	 1C7zI+ltUd9dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B9B4C6FA86
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166439825336.3170.16377165618465143683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa0948eea6a21d31095c694aeb1ada698301033ea1cbeeec638cb5c57cf84c2
Date: Wed, 28 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664398253
