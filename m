Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFD01847
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:21:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89270C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670746888;
	bh=fA84n8SKwdBjDGKyfT278jna0BaS5OLsmJtTMij1lmc=;
	h=To:Subject:From:Date:From;
	b=OhmG/j2aJIWeAKS4Qj/4/jCsc+k7/SrOrBOx9AU+tv8eu4l/N04o/v6sDH2L3Hsxk
	 c/C1I59ir2SRLlefgQG2/jQRbaawYW/u5RsugCW1C5grb2ColsPPYQnxuCzCgMerSH
	 QjvPiPxJb8jCzBju3fnnTeLYVjRPSqBlBqDcaG/QIZQumnOl9bRW/r656YHWuaI0dN
	 ChUgRmrYdu8hnOPGI/eM/u5yvP9cjHf2Dx4yqbEI75rW8OijvkIDePcSXehJ2mTtAZ
	 YvWjO869l+U/IE3Ay7/8EfKcYX1MpgQSXUDh8XBoN6B8rL75lIDcY769MQNVP5Y0vG
	 CmjgjBjASGk1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68FC4C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074688742.13644.14989805168893546356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686bf35d64dfca55bdacf149756f43ddf970e11f23212fdfedac158913d02593
Date: Sun, 11 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670746887
