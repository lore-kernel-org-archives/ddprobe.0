Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2E480B
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837A1C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668978054;
	bh=hSVuv8wP373u5ofR+DnO32cAZT7HaPdE+5VBXIKSyWM=;
	h=To:Subject:From:Date:From;
	b=oKhkze5jYJlOYy+W2tx4LqYj1h3YmSH4A6eviF3VdJan0Ig2Cqt9NN1ekywg+xcnA
	 X11fun/zwvyH2ATRDwT52xDVlNbFb96O4ZobQv+gi15GZVDrBtL1WUOt6XfpmCZF8R
	 neF+rLyCIAPX8teS3SrhfPdG3YN3lGphDLvIZsebSTA2mzhmWDUL5125ROs9e3Kx6N
	 m0mBR8rzyE0Rx/OxCsulchT/KeTzbLX7oBWAJ1+DdW9M5KbAC2nitpttq9IhoeiMR2
	 3a7GE+9+dDsLMptaTBd7JblsgVVFALt6qeyScktlDY7Y7m9So3pBOo52KGl4OzrM+f
	 WrW09B+UL2aBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACEEC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166897805442.22736.16380979490699425814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b84d13e5870e5dd6db90843626cb2fb2a068321c4aa032b4b33d5477455ccbf
Date: Sun, 20 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668978054
