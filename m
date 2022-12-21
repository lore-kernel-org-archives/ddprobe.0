Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6D51365
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8016AC433F2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671584487;
	bh=NI03a+33bKw1myx0fER1lUa+pkdUrvQH99fsm0WbIxA=;
	h=To:Subject:From:Date:From;
	b=gDdCpyULeCCJJlJcyXn6S37V+Dj3PMaQJqhHZL+T/95wylncXN9Bgq0TWslEeW5io
	 Sbtceu+XpO1xbPzT3F1icv18sUhF07S4KiG73E7bE9QQubNN4PJOWAjubrLyJXjdk1
	 krYSQvOwBpQTDKByKdPA/FEA1r1p/3nUoE/vZlIZZv2HNafRngDUo5xff7GIPo95dQ
	 LEl1ScTsqtcZpE/3eAY84ifYDvLMDn+7ofZPciUSs/QwGgXLUJi9Sk49WtXCYLh2Es
	 f8AGl+kAusAEDMOcGQyJ8xZ7Hwx9kTWwfJD5d8ct+NvM3uOWTeb3vqNFOA2xuW1lsE
	 rxssjcdm94++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646CEC4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158448740.14770.6404993603729600813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b884f7d995f0ee79f833551ab829f5b44b116b47b5ef5467d0ff762f41f1a5f2
Date: Wed, 21 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671584487
