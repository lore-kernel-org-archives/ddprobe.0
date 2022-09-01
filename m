Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73397FA
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71AA8C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661994053;
	bh=wIQoY5Y1YLMtadc/nbh2tad5nh3WmAuw5u+OGw24nyU=;
	h=To:Subject:From:Date:From;
	b=JCKrf34maps/q1d08WL8IZ2wt3OHE+n9B3ZtP0NPv+OSkKrk9IjSw++9SY8RYwn1Y
	 9RdG93YRD7nXQ68WqncN+T5vkkwyaqg16U0UK9zEA+fW4ZiofhAOGx6ME2eUPsiwkr
	 SQbBbsUQMBwdsGH0SWYRVQ+smfWeKS/1X2UEt1s2Z2X/4q2ue75mb3ghMuFautoxuP
	 LjhjPF4u5A26LKoU+H/1Y1j7598pdSkgglQOvwTffopM4HSJRPTLvMc3MeA4tnmwPU
	 WDGdOLmk9w8fekIygo85EJtw/rNH5b8dwSEe0xlIGnc30vaQF1VBo+RKroWvfKux9r
	 7FfYC6xCzkR0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 519F3ECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166199405332.27691.264624686799171218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95109ef8f7a790f0ee5181ef363cb5ad1485228bb7125a51d87a8a5a0b9575a8
Date: Thu, 01 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661994053
