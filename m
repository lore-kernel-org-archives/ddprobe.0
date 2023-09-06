Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43287EC2
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 08:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EA0C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693990448;
	bh=NL/EsFkCemYW8JwjE0y50SlN8S4H3TuWHX/Q1IVVBXA=;
	h=To:Subject:From:Date:From;
	b=G8GziD/RaFeOOFMOt8L1DiOQB8rgi3LV2pm0tqSYqRpRyZKc0mWuqS8gwcRW/Vvlt
	 4m+uGlyAXSeJ7lIS3zu8yb6VAZSEcrV6shJoug/ATzUfaAqI9wS4iQi/9LT3+i6Qjm
	 hBVYdh9902HI9Yg+Cfgls4wEIfnealx103nhQBUpBd6dFcBMlsTva9mcVWU2YflxNO
	 oYEU/51esGR2I6PDmAngf9Tfp8u8ypFcpAdDqq5R3X91jMpxoMouqz5qi8ivyA9b29
	 VM3SiiFSwKMmStvDOIUfbAZgpyGWaqjf9dcP9Vp6TC7qRchKphSqBYnJMRmNQ4v8i+
	 dEhRFOFb36qaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC68EB8FAF
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 08:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169399044870.23931.16702477570215909107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ad70028258529541bb5d97348265a1443ba136e06fbe48ef000bb14c704e65
Date: Wed, 06 Sep 2023 08:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693990448
