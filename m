Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5057F381
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 01:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA9CC433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 01:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693789448;
	bh=GIfqkENKcSkqog5xCdWCdea10pcbCRwLzpCeXnGGME8=;
	h=To:Subject:From:Date:From;
	b=spcReDia3Uj+fXLGxAQTvjAsKejBQu6mIvp+Kuhgnwx6AsS4bbZ0GoF7vwUfCoMR0
	 R3XVy/7FEpgsHuQztUcaTwJH/vjQj2wcFG86oEUiNljHmESy/m1V7ZjwPR3C9yE7zu
	 qaBJZyR6cJRzbrlqtd8DDuN4ZZAVeKdjLwxHaHoQX0dvUUiB9aHIr8aZa6bKtU/qWH
	 7ZS1rq5ulrrmLyFKqhGGhBkcT2eaqbL2eOS+han50ACJJaa+/3wZgOxfkGGaEi9zIG
	 ESg3n98sEvjqn1Mlf2rBphztMxZbZATa8EBE/zkYVL2H4cTnkxLyFS/rvMIpA5y7rE
	 bWEqwMxe3EaTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0575C71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 01:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169378944871.29994.11309179749259946998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0b97b66a440be295f333c64b6fab020cd4f3aa7518f91f31c3b39083c88365
Date: Mon, 04 Sep 2023 01:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693789448
