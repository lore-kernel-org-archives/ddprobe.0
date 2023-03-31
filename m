Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9F68F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECB0AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680296586;
	bh=oAX/BDFy9hP1PzQYzGlA/L/dGYR5IJXOifiag66+k54=;
	h=To:Subject:From:Date:From;
	b=RD44taIbM0z7pMCZqaLg7KGnSTmnwNLUF+AMdzv/prp3m2msP8GLUl4H36sjSfptY
	 4rcz2t2tVRahWtakTep7kE4LeSZ1fG16sNPbwRdFPNnFcLbAruEOQfS2JstCpkjQPd
	 uz+9yLjXM/jk58d/GW/cLNt6sMfVQ0sMBGLgVpqJa/By78HIFQC0i6EdRvMIQPGnI0
	 2cxWXUzbyI6K9mdBbelqG+wutdHg6V3Ku0ZfbknGHCtYZsiFRhkjMZXQDivODCPVS8
	 CPcSLBYmDMbGenTmmbw9THq2siR4molLAVVxPrxQFH1y62HUsO2G6N9WugAm+ay3du
	 R6e0YXluPZpNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA611C761A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 21:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168029658581.1770.18433580230880163742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce28ceb35864544933d0d50e1dfa5f43a7b57cd7d97ced9fed5aa4749dd8221
Date: Fri, 31 Mar 2023 21:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680296585
