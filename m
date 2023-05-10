Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F89A14A81
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 18:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00BA1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 18:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683742266;
	bh=4oo30XVhCR6F8RR1fhI/bA+ipZIY3C+ZsjcJJx/p4IQ=;
	h=To:Subject:From:Date:From;
	b=WyEFPtNYMp7+SMc/5RXD0brYJAkasbTw6cWHj/tb8YHedEeI2va3KQBMWyf7N5cGG
	 2EoafmJCJ3mm4IyI0FZxJJ21hWowiCZZ2zbx8jcc5dr0jemdA1UOB5qG8myFANOS71
	 2Vtg4u4Cd6A8AZHE/IHzw3nIzI9rAHE3oC8Pv0m6ARBBcHxJ2/2SO2P5Mr34wGg5bw
	 AXrRmyRqNNCk/GRd8nbgJoEWGZWzkxKTtzkMGzv2v5fWUncVotc21tNp64QZ1E8UhS
	 jEkNuIRr4KOUsGsFwqVG1kFOSZqDIPEk+0Kso+fN66aXUhjtuGpOaigPFzkCH9MEPt
	 41fSH+xGg5Fbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD15AC7EE22
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 18:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168374226583.25593.11353133715293777854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d79fcfef3aeaca259dc2c7338c17390cc3591cdae257281fd4a4473b5f1aa75
Date: Wed, 10 May 2023 18:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683742265
