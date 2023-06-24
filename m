Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C9A625
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 02:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AC1C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 02:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687572788;
	bh=7jvmncPdcegKBaKoGaqvIS6qvVIkD0ZNziTszfCCMyQ=;
	h=To:Subject:From:Date:From;
	b=UhiEfWL1OLjeCi/+RHHAAfU7o6J/owhOEfoE7ungXcUkvMM0QB51g+LaRiUYhN1pE
	 pwfb1EECKck8TFGG0efgj6k/Eu2k6NzSbpMUN6EoijRvOkioR9Vk8C1tmBKesIDCrh
	 ITfLvj3FfQ+K9fasYP5U38NzDW7WdiTpZiYDR6xNXTHXJNly2DzOOfTICkBTMw0K7/
	 Ts0ePC56m0u+D4Qt0Yd5Wb19CpSOs3uoNWsw2Zcm3It0ZeM8B+clluykDSWbGbIx+K
	 qWAZej1UdXLp1NwhM6EZLzBHCha4V9ACbh8oEjLpevKfltATSNQ8oxr7hj7rHsBTDl
	 lHzcfErOhhx0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34ECEB64D7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 02:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168757278868.10243.896869800535106203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3702a0e3bd23082b3ddd96682d92b40a7ffa1a6854dc1344f8c8e18ec5c3e9
Date: Sat, 24 Jun 2023 02:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687572788
