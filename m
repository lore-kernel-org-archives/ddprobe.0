Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0FA15B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762E6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670895687;
	bh=pKHiKhLM4e2YQJzMSPGNnH4E6vwcMtpInqaeE10GXkM=;
	h=To:Subject:From:Date:From;
	b=DUa+9oLnA3WaWBZF9ScHcTaEZcatBF3W2R7ks7dLQj7AIq4vFnNxDgg69La4h8GzM
	 ngSGzsION+JNBlin1R7tMyZvNvgBrGvAI1HBzAOKFQAMsd0bMaOelkb9DpLTEB1h/L
	 1/ATwNW9J5tIUE4nmb/7AlYC1Mk4dDIbiyPOxwQR28X451x0i/CGvz0qHGryoKRq3E
	 Z8IY8xMv0zdsSo/LDbsAqm2Z/mFgo0xOY2TnQMPjg5PMo2m8Nhg/HxhBbu3DbGDakU
	 2ynwuIpR4lwlvA2x4WX4SqYu7ElJbPvr5eiNjVAN1DVxgi8hB0RA78xSKxqYsdhTok
	 y4IJ1g9DfmHUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62838C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089568739.11697.7330420636650597237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f120abfb1b2fcc305f37969224a8e915db1b33a123f0c229f7a9b3a0ba1bd83
Date: Tue, 13 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670895687
