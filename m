Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF97633E1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1A8C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671751287;
	bh=CgLdgv2xnbEqMGCihZNlffb588KC69LTsXTHPB9XkJg=;
	h=To:Subject:From:Date:From;
	b=vBRE0iI2vKzz99mHsNJCdFz22Ctf1ETgTN9NjL5YkDNRvf/X2ef8B0srwqLvWU9ta
	 Y3MTO0Y9CHIie4L6am2i/dlU7oab1ptPjGrA4bG2oEV+1D6uxGqlVgYeLYnOxm4vZK
	 q/lEaMhxg7yplbvY3Wuv7/xSA6Kq1OXYFEwl3/B50LWaYg1jEhJBTcRIZ8VCweCSbs
	 aBBteQ7jMgBSXRH4xks6TyI7YixJHZ50xNZutJzBeyb97GpDGlPFK/An8Cy4kSnO8t
	 sIYaSQOZcdYlNAeUiyVvR8ld9/HeRBlKHs3UkYVGdM7+hGoUPiHctktbH+jcDrE5Q+
	 MEo/QBaQItVGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6371EC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175128740.30001.13196974925596005256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88279a8b99b6dbbd55404b3bf1866f87b6dcb3c825ae9704dd8d6ce74016710c
Date: Thu, 22 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671751287
