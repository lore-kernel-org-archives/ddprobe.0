Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47DC1104
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D82FC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666096253;
	bh=jn5/b/bMjnBUR2C2G91P/HRpqeaxImeEOS0WlpQIovY=;
	h=To:Subject:From:Date:From;
	b=DBSHDm1oWm7Kf5/QSkO5Ng+90smeNr7oo0kP7zUydP1YciSGb1SWv1/yovb98Zud5
	 RWxl3SdKhW++EnIXU/YoWc9pPi2zTtnhvLvmVyZsMJU6vUh2+SKyWsf10s4ThBAhKQ
	 mcdoipxy3Pcjx2mrOxsd4yVCZVRfgbkATvsn39t+/sgE7veQPvVDvFLw4Oo1sjO+tm
	 BXC5QycAxYu8KObj5XED+M+MCSsbLcS3skROeHe/DRNSKta7OpMOzp6tuDqD96mPsY
	 uurZar+OOyr1+SOuJJFJM0gkwXOq9X2cc5fQjGG0+AFZrT6zgV9rLArwgZSU6+/+vx
	 R9O8KFw7Clhbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52178C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166609625332.14428.10858970667301485497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d915f595ad62de7e030a28fcec951a88585c52742967a70c107911d94a80f5
Date: Tue, 18 Oct 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666096253
