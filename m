Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B670F28E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9EEC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661504452;
	bh=WlolWiD2siZZp1YqFze+5TDAbJm8dfr3btAKOmkrXxI=;
	h=To:Subject:From:Date:From;
	b=WBP2ZVL+jd11MSCkcACqjm7w4PDCB28kn14uVlIHc6ML4qjAsbkPlkCZL+GhSLDlC
	 CUusgMPOX+6uhavyX00CvgpPELn6ewoKwCntT24ug1g4T+ueuN7YL4wCZhZyw839SQ
	 wYqHyotvGo1Eu8n5uNJ39T4kMB7/5WRFGE6ZHXSoNq7fLiZ0rnXCsqI4OiAO7NF5uo
	 IH8yGMkYvyEdbvnWu4gkwoBu56RzR2pzvTi8A+OAZvIWtLckr2d3MVXX6hhDAKDmqK
	 XAPB+UPrGUCxiqJFT97lePmNsb+gCgZtRJD4x178Hba5e+bqaThv4iJ9iPg9gavo6h
	 N1Pxip7BlF65w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540B6ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150445233.23547.12755043032598882906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077117ad40d544a53fd19f43afc8be57197fde357c55cfd16f6240dbb73f4e95
Date: Fri, 26 Aug 2022 09:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661504452
