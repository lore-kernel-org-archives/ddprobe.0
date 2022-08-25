Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9482F57
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E9AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661436052;
	bh=qePP49//lbazpopGfdY4HR9vLUBl+qe4r0BfUM2PvSk=;
	h=To:Subject:From:Date:From;
	b=IxgYraKTohJPZYpWolFz01Y28J6eH9OOalbq/2HDhsAOM/zrLbEqTMRpBBryqTwnJ
	 THGMHqHg2CL235ws+1gAbNiAeAPoEV8cW2HYSRl5cUwnrBgYDG1qye7I/GCgMwsmHy
	 Vvev7cf0keoGEWJEDdwnnRw4tMCiPOz/Rsruv8Wooq96Knt+Ml4ofs2Sv8dRd/P8Sx
	 sztTT4qjQBmn9bM+nhvfGsUg/8io3s4DJslS2Q4XUYZgrCG84rrhr6QH4Qtvoj26ts
	 UyJBuhga7A4p/53NQtfq59u1BqfRpnvu/ceaBrh+liaG/piwRHn35j0oun6nvczOn/
	 N3evRC5Y2O80g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F09FC64990
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 14:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166143605231.17820.13743668190824567082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 171744dd390b9fd96cc0f9b04bea41c0e4f916840a2db907c1a068b8f9b316f4
Date: Thu, 25 Aug 2022 14:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661436052
