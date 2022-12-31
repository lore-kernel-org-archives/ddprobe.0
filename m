Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D157E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6946C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672459887;
	bh=YKlP1MikokPpsrferw7/3YoScK40l7GmgEk1FljGVZQ=;
	h=To:Subject:From:Date:From;
	b=DzSNA1dlnAvCG1XxseJEgh0nzdhRTLMY4gZZEImGG89IsvM4uMwf7KpPGCDVux9zz
	 Opg1WB2A5y2aGqwNhViGBlZeE1Doly4xO03LWG7+GmDNxV1/PscukGKNXtJ6Dd9sjN
	 6INP4AUtqukqexrAiD7aFB/Cl6EHJbAIHyGeZzrJlzWqrIYQXG+y/aSBiGqz08bWOt
	 u+TCDcu4zWQdTOf+yEte9e2732CBP+C1DOMQelFT0LZQMyiFG5fPnZ2YlenlwuEk5s
	 w3rNhGTn6XVjhyGltXI1ViMMHY1N8Kp2kil76M1M7x3zulyocurJrPcMoN9IZbMRbD
	 2kPpFetZfMtrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88957C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245988751.10626.4572683661852595072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd2dc3fdf51d0c4327cca048f2b494395fab457dbe58f00c489d50f7bd3f1c6
Date: Sat, 31 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672459887
