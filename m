Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C36B1426E
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 23:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1511C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 23:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694128448;
	bh=mKAkWjOk+76h+p137oKl02BIkIc2dduB4rjJvZn9Zmc=;
	h=To:Subject:From:Date:From;
	b=Z0kgGwvvx4BplwIO55PCP9bZArMqctwtLQmbQ2bp03LvW8RyppljKJyuk5ryN2tiB
	 Y09vTCnpFX7+D/FNy7WED4pSp3T4OIrJy2jx5foG9zlCj51KFi1A9JLluPErDTa281
	 HKRniKSO/uISSGBnOmMSsjOKXR3SPcML7zqmNW4itOWUg4y9fdJdiJoMEF6ZjuulwK
	 2U1B3kBK/whMHoijvNrZXm4wHqVwo67NR/0m83KMMp7FJvwULrAXDXOwd/4P9eicrY
	 C76ZUM0vIWDHHxQW/R5yn2A9lsHLAFq233VqGFX2plUITcvwr4YUs4JChzUlJdpXQw
	 ZNx/6TFc23RyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FD6EC875F
	for <ddprobe@lists.linux.dev>; Thu,  7 Sep 2023 23:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169412844868.28512.4881503770567678814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0465833a5de895deb7505bcbc0688637574b3ebdb2b244c21450d3911843bb7d
Date: Thu, 07 Sep 2023 23:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694128448
