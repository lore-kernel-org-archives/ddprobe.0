Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8B02CA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70579C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663871453;
	bh=vjzz85MDXbshuG5Nx1/XCdyDOlrAeh1Nd2tlGehh6vQ=;
	h=To:Subject:From:Date:From;
	b=eC1JLibHfCezde1ACbnRG1INzpExJ69YvRoCL7bEYxBb9Vnilvn7jQFxwNqb7U2XM
	 iJp8qtcgKdvY6zs+7zIpPiyRGbqflsLJDe14O6YyVIiJtV/MXPKFrIrVW2iMptUE3/
	 mHSId6jNEgr62RnDCZs+ueWkQ7M5Olm47xnDzTOSbOZhJPrOgm0nLpxrt3Y99IVoUR
	 6WHDEmMAgisTLfOA181c7cF24221QH/otpWMNy8MvnYDhdb6anwTasORciLpC4Osnd
	 HZr56sGwqYB9f+lcbspzDJLYOLoPONWAQpAasgo6Q3PG+C06sZFOC5ha7FpIL8j7Hq
	 OwIPcv+SuWk9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B1CC54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166387145333.20964.5424882272748194294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f8337d482e7a27f397985d784aa41a7e456c2cd0da178d5765de4d517d2230
Date: Thu, 22 Sep 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663871453
