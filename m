Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC93EA8
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714E3C433D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669088454;
	bh=oS4aBNfhjF/hXA3Wog1tIqTySw9Sghb9MfIQ6DsDARs=;
	h=To:Subject:From:Date:From;
	b=AIuci6zJqAXRH6uCNry5SGGkHCxS+lk9y+MaxuhI3fku5aNN79upDQmH1hrjlDwYC
	 8812/Ngz/l74qfoZoePr/sejvdkzEyimWsuZOMLsrAHd0A2V7D8JoBrWET6GyAIAL5
	 mY3pCYFL0qBts5ZbrYXpBnjNbQEziKKgFRiWHOu6qILRmtBU5A/V10CA9xPzOxnvHa
	 22pVfyh7H68/AlpUZoWkFjx4OtiLOktFAt6GNkduLTjAMS3+Wd6F+NwVnKwKxkqwOz
	 DdrQQ8NMuFAuaYEHEgb2wRlNI2hWoh/dK8kipLTDGqWCGLS6u1sGCTt8DDoJe/MCEY
	 fYdeLyukrf2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532FEC43217
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166908845432.19289.10642461332399025993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84044b57ae2484c2923385bd4f59427d61034264b40e0db0caf64d3a697d0757
Date: Tue, 22 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669088454
