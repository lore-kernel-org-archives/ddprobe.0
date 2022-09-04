Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27F62F33
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 664E9C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662306053;
	bh=xgicCwdeHGg7SXpgh/nsMdx2I0hBQGUIOMqFOo4NMcU=;
	h=To:Subject:From:Date:From;
	b=tlr7Z6O9po7EUZB16k7iNzm92+rLcBxm/bMNOW0DdP1SS15pWE00q/4e23EalkL47
	 p+9U0M7QbS1CE5J06NOPjjHp8SZjCxcBIxcOHuurCJaC5PSjE76Al8IiusXrcJEPAf
	 JPq/z8jLSpGnDSTV6uMdGM1f6YCHtzCexhHz9VP/s4WbiPybHDB15QsezhrZgrDDDw
	 1M5VJf75RYNRSMrQMcoOJbZ5KYGUaJV3Xzt+8rso2zUaLLmcLfxOb29liv9ieSkbIG
	 9J/YxoKPdz4QFMtMzvMTtM3quFOffkpmTS3hPQj4ydoxoA+sY+ZMXSqfu5b0C6LGnD
	 GXiELiJBc5ryQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BE5ECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166230605332.11520.10187570202147165712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3417a1d23ea4c0c7bfda2f2bf04f5d059bdbeca147f2ff69f7cf8af6010527c
Date: Sun, 04 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662306053
