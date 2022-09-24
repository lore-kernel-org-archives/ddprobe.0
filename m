Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6AF7194
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A388C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663988453;
	bh=yquLlM3h5ekcLiqh5IFQ62LEjGQV6LD5edUkWx7UEkc=;
	h=To:Subject:From:Date:From;
	b=fBqp94GQTSKrAtuG659eVXR87XWaS00U1ZRQFxRUeBNemHHnqk3MoNPa1RpThwTN8
	 tdseNLh9tem4SEe18DgCufNlSBdpdaCagWMvT+YppPY1K/R7WLNvHtrdYxtnMG73C2
	 bQrRGVAXKl3Lvi6RYr36VxgM9oD0Eqy41buVIsu8LbXIxNQCZDbVh2jXqDUn9mTw1J
	 hpxtmaSzhwBvwblSKXc4woYl3qbXSfmillJ2qN6wjRPvGoYTmz7em9D01AkpZBGMre
	 rgl6w+Jy54CKGU6MQiOdJx8V4t+Nt5mevfk9g1VJsUEM13erMjzK+BHngK+ffW9j76
	 hxgveHJGk3C9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F887C04A95
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166398845331.11263.8934842020135649923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7816b6138e4661120f826e83be562df369e1bf57d5a5101765a5bced89a3187
Date: Sat, 24 Sep 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663988453
