Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7DA72105
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0A3C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663369253;
	bh=5AL9FxeqN7u8k6W+wLvWHmb9wXB43mJkz2qHLQ7Z5mQ=;
	h=To:Subject:From:Date:From;
	b=KEtqFVedY8g4fjD+gna+2hEtPktSRm77R3X8y9N7241BA5Ljlljo/4s0nEB4egojg
	 wCjMg3RTG5poDVJrYGxa1UOnyUZbxnWboRRCvScOcDiSJDvNfX6E+UXUVhBkTRltVd
	 VY3Lx55CdSAT/hvrOjNys9BM1COJldKmp9Dob176+lTf3guURM/PKFgOMWFyS42DIE
	 Jl4aptJckNczq2Q1aSH4X5LNm/UfZ3URHCbAiojdIuoiO6WLjV4RaCilUEg3J2ncv9
	 CZCVWxSMY17iGQOlRifK49hHVh7uVKk1HoHUQ9ovDeEDDCR1O131lz+Xuy1oeWhgCD
	 kQ8xCBf+mGJpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CA8ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336925336.10843.3099500667176761868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab503275480f2fa759f4873fde63454a153d4ae2de2aeaff2395b0b9ba094420
Date: Fri, 16 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663369253
