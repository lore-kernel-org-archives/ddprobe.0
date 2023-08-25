Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEC7179
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 00:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD6EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 00:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692924248;
	bh=+EC6H9MVYRdzW36VRTzCBwjDFyM1GOVtuD4xg5+RBG0=;
	h=To:Subject:From:Date:From;
	b=mZua97bJj+PHlzvH3T7Vg7jS/B1EokcZjfeM/pGhTp13P2HA9/lmyNHsKdJVbWRJj
	 gQT7ywKtuE3kXON/BfkC7vZmSo/SWzIQ/tiV4EEwqfVf55yxd3FkxagUcporaa1aEk
	 6+00sOrgSaeDa/8Sqsl0GMmy7glfKIHaeLGOmSgftCNLmyT9VlfoNarLEVStVabYRI
	 N77lxI5dWFDjbqN0ipgm8DJukGWytCWOQQd84GpgM5/FBV6sVlP8thR0F305neaAdJ
	 lE0Fvn84fSdX3kUMW8iCHiWiqZhgMmhNyE9n6ci1TF5RI9z1aRZ/SFckJBGEDry666
	 zngM2o4HLtdeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B44DAC6FA8F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 00:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169292424869.27722.12652643709236391455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 068030f21e9c5c8cc6e4cf1a8262794352e218f87cab9e524fb25fa31a52ea08
Date: Fri, 25 Aug 2023 00:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692924248
