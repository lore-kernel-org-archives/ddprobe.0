Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54152EA0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 04:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DBEC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 04:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688705228;
	bh=8fys7zwXU892f74OeQZ7V31uSM9FAsPqtP0PJj8x/ZQ=;
	h=To:Subject:From:Date:From;
	b=EM9i7mYqj9TKojXmXxB/u6QQyL+oZ4ZEKFFObgD+LyiV8xvef2JHeiOqVFfZBv8V5
	 ZlW52rcLf/5ryWsEQr4suxITs6dKDSgk6Y72K35Qmr7BTNyqNNHWoKVBEeijVfVkh+
	 fEA0Dcty2aau6Wux6dqEV8zbZECYATawfMl3cMgK8I6vulH5+IE7mT89nCCpHOtTTc
	 wY2gl46l6bdpXSnfrx+mSOQNGHbxcp9bhDsucQZGxaAYc2qEmGCDDg1HXrmsnsuxdp
	 CNSP9IVExxNaxhc4gNefu65lq5o42Iy8BRw+gzx8b6bGw3Amgazgb0yFFdg9NKvVnj
	 ZZ2hNJ+C0fWfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9718EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 04:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168870522868.7273.5862791983968703138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10016e25a2cfe213659ceb1eacc6a38c240497646c2f1cd24bad2a216b2c783
Date: Fri, 07 Jul 2023 04:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688705228
