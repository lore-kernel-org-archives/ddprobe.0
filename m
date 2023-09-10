Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7425A257E
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 17:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C90C433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 17:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694368448;
	bh=CVtW4E5+1T/rRhYyURSS1VQ65BlUiGnneKcTrRLa0KE=;
	h=To:Subject:From:Date:From;
	b=tQKfEh5MrnehJiwExJJhbqv9fSqOQwQJ0fGOhDmUZVmyDphvM8qL4sM5ifJh6OpnU
	 s0EDJLd2uwJiDKOkRCeY0J/dIcoH6+ZCnXGx324PEJpaxD+xCyvdBurMwVagNO20tX
	 ZiCxbaDF8TgPtXwFQ0Dl9Ho47PdcV+7VOMrSMHSDbNH/y34R//MKMA58oGdIis0OLx
	 IRoTc9MHDfb8BKTq3xP9SenZmGwQn8HcoKwINh50Kt9WV8pi2eAbs0FO5NHaRhJjcL
	 GZwZU40jpvxC4gAa8YHaiyep6LLH7CPZRRKZrvm/637mcKyTH4I3VPuwAwzPGu+zf1
	 +VW7SwjR8Wrpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD229C71153
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 17:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169436844876.17280.10709374111307733546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002aa3ed7cb35dac0b5bee6db0bd43ca5b1baf49b8cda69dfdd07d9f2228d468
Date: Sun, 10 Sep 2023 17:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694368448
