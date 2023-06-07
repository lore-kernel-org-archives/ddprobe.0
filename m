Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C3830B90
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 12:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 177EBC433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 12:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686139926;
	bh=SBDHBwuZy23hZrYsCpBK3yMv2t2GW5Jxyg9dnFnDhWw=;
	h=To:Subject:From:Date:From;
	b=eZ07V8H6ERZvCu50GR/1/dZLWJmFVdF+OKXJblK7wC67KFo1Wwao1ymRXDwoZT5JA
	 tVmTyJyZXxNBnvrmzUkA9bAWwaaejn/umF1YtHyapVBmKbWDH5Qm66AboKFZQWQ7Gc
	 7ZqOyUhQdAWRKdNta2sUeViSmAn885YuWNHRayWXoYFpLNKzXZVKdtd8Sm2v4FuDEJ
	 F7IK4voCaBuGfVIIWioKJYaijLdIZhQRhN5Xhz0L4XbAhqJIDaTBaUuErFBOTxaKaC
	 BFJBwwdpkXs4OM1QIbMYtArbElEYxvvKxr09V96anMNWPrYLFA7O54uVMmBOuz8LQG
	 3a6R6i2jlNntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1BEAC7EE25
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 12:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168613992597.19185.1039674281376769185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc20f0e6acf246fae7aabad341bdda3c76897f9f52dc4a653f2cfd808d99669
Date: Wed, 07 Jun 2023 12:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686139925
