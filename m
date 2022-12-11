Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B3C3236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E18EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670797287;
	bh=JawsQTTqzOjb1cCOq7KsNxw3m0x99cHg5erPtTnO7sM=;
	h=To:Subject:From:Date:From;
	b=M1Q2+iY+tUCTlHBjtfNV5XPEST7pyE0pGOf9FMI0zxbT5NtvRkOAqnixlpaZytSEm
	 COfVJyTKahzlu5S4qvDwgox9K2uwPW1ICudwXn1wf1oSRbus+mgrGBDqqB5BXWExAc
	 1lavjP4k08RKJiN4gCTIlF16IAZPaRafBlT8vZlZTzzFXujuTSNGAtThK32Ft7soo9
	 2hFhXYCbF53P1NNmlJ2J8h9AeUF6tKFdrHxh872inZkav44QKPx3s+EIOHBoJH5k70
	 eyQU9ERCygq9u5DnYeBQ8iqN52tSlvBp4PAv4/X2GMQb4lOg6/elVR2uzhRzgjoWWW
	 NJ6VEWESQ+kXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D30C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079728740.3449.15324529378846050529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7933c5579f40b5954c0aa526cfb3fbae2ff60d2b34b4ae090a2000745fa7059c
Date: Sun, 11 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670797287
