Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422E52578
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC9AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681684625;
	bh=qrvq7CDtT70IKrQ57EXmcnGtIzklVI9bW51vKZMvb68=;
	h=To:Subject:From:Date:From;
	b=XtwI9WT4HovK+bG3tLdmrXbMudPaI+YCB0geqzkn6EHdRxuQ5RUzFxiVPlw2LWCvD
	 O2fEsIfEEMLfHIVLwQTgx6D3dDHEzLcJZIXCtdUau0fRtOy2//mizGbxrONDYsjt5b
	 bPPLzKUOfxC/gSlzzYVN1NE3n7WagOHj1cX4t/HWHUOy2XiH18Ztdyv8DGFiYSi9HB
	 x7xQS++tODkBgX/xAJtNmYSFJzRsAp3bRLHED9vt+B2mWcrWcEch/Xg9AElyj7yLA5
	 Sra4zpoU5OseQ0+hZSSmWE1yfWr1i8Uy0yKhCAKDEPyMyPvgCCjxtvAxYhJxQl1a0g
	 zXd9eKCb+VKww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD73AC77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 22:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168168462574.17659.15502947438309825074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5caabdeaed6717d84453b2e11344cd578e4f7fee36cda6ac36649441f5fa5d79
Date: Sun, 16 Apr 2023 22:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681684625
