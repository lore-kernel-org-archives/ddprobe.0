Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A642018C
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 21:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2D0C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 21:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692739448;
	bh=sSd6zGszUerJAXNzs0m+korelPU8OR3XH259/GrfUaU=;
	h=To:Subject:From:Date:From;
	b=eZAvLjlFXdnPV1hfhL7r9eiUj0l6SAd6vnm7ROArTdjzDcMrr0AqgNsAr+08vowtC
	 6H119af67Oj5uQULe0bMycMt663yLG5SxJMFanZEJrCnUDHcv2rF2f2eQZWRXRqA48
	 slD/V2BJKPRWK4w1jA7KQJTmac6x9Z0vYQ2WeGc5fKc2hPsxHWMc9R12xsULh9PIc8
	 yLBUvKONiiNiSE+HIllYRMBUC4I/5Kcb/WCVXAJD7wdr36rliZYxj6AYwZtAGbEHt2
	 JdSqS/Z/jiQP41ICrF8yr5uW58Z54cdfSIDW6jN2Fjyk5yl5GHvqmjo02akOV8nKxo
	 ASZvLlyh8egtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7C2EE49AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 21:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169273944869.18077.4599037320388934722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a9b00219ffae45e3b3b7c7731fa3e59d9bc8856b6293c4e7cb4fcc8670071f
Date: Tue, 22 Aug 2023 21:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692739448
