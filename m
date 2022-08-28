Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6787C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 02:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7652CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 02:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661653852;
	bh=H0cY0hg9tsm/9MFilZFT7dqEdsgHhNgdTkHb6yc3quc=;
	h=To:Subject:From:Date:From;
	b=sf3ZMQwgVJmvJPGIshk/gnBCLogPSNUrVLXBygqp9q+ZRppoYDsXDuQIxKxSwsoZM
	 BPRK/xuBldJFMviJVv5mi4Qsnhx3/vtyGCsf8C3Yvv1Ylc9iNETFFXOElVRtgRTOQG
	 6P6xrWIrCrxpeEpW2mZNXtTMOUPhGl7+Ta9PmTeuUHJspSZoBN7eAzsbNbPtjCkvqU
	 b0uwZPb3ZpCWxXmyRAM5faCy45smJW7D2aiylLltgzpNx0o+YNFYW39VLjPxe0rHvG
	 HopWPumzZFS6EWl7m2Wf1RPZf9poGbUHnBXJ6iMsvjMnFA26nEerMgolbdXgOzadnb
	 Vrw9cN4bWhmdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CEA6ECAAD1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 02:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165385237.16407.9172023833047525065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 167934d0bf2a8dd25e036938733a9f97897427b03f63754ec4ffcba8b44de3f7
Date: Sun, 28 Aug 2022 02:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661653852
