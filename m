Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D4F7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 01:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A09C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 01:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678066625;
	bh=SpkJdfGRE6kz2lX6RgIDddXLLOz/sA4AJ+LmVoKJaO0=;
	h=To:Subject:From:Date:From;
	b=u9FqpebRAzFTgi/AbGbb3cb/kNEV7C9C2wMvMbpQ4hncPVnj3b5RP+vN/saOCQc4p
	 0bgU3FEUdrj+cWjSaZxYAlljyY78pIEON6B9IA8rexg9D4PhgwAk0P3LMg2IPBonpH
	 9gyDbdcJBuFCTBsImTBl/aX9WG9OPPDandWLW2jZU7V+8VrnNaQ+/QVzxGVvgluPob
	 xOakM5sXamLcoAXXf4FVmVRCiOPd8QZAkCk4+bNMXsDLvKg2wF+4t/j//mAXfF7izV
	 37FvJDEelSNjq0JTVUNyvaERWaiJp8z5ylvrnKcQm+nodLpNmReKrVhlbDhvqrIK6H
	 sPq6G/WS2TIoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BA8C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 01:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167806662577.15064.16613679531809758793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e8536e8763b7d3d5115264e9d3459d4bede5fcfc430fe35a38a0a881b0e404
Date: Mon, 06 Mar 2023 01:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678066625
