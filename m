Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679A91114
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 02:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5FBAC433C7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 02:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690253528;
	bh=OD7kUTcDhbSB7klJYfez2qi8m27bF2la+aYLJiFfvBA=;
	h=To:Subject:From:Date:From;
	b=bJZh1U+NFfWWam+2mSiCVOJQX5YsYkgAR8Wbw1k72KM2uPWIbHW0l8FFF/bmSmtEo
	 RgX0xdwcFByR6CeAwvKppAxS6Thxeez8BY6U65PrmkpV6mmRp9KBFmeSLkrYqvidLV
	 udQy1rm8WYxVyyDMtX6GaR8mrfV1MehA6mAM6+XMhoqI8tHHDdTlRscZeuFitGY628
	 lWXpLaQRC4adV9elspSxNSE93y7NW9Rii//licWJUiXOjl+kuq6biPYcesK+sOj0KP
	 N1fqHPt8u/xCq3SWSI4jkUonalxQcCSqTS7A4nQ7BH4BgSfHGRlxsLMLbcgYISP4Xe
	 OQuuAm48SBETA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56C0EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 02:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169025352867.24903.3031878852069687117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd51832c921af940fc1bd193ae5e33434b77e267caca873be384df0578312c7
Date: Tue, 25 Jul 2023 02:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690253528
