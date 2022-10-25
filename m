Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4687B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67D3CC433D7
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666683053;
	bh=NCq/3nWaoy272IMO23Y6MI7hSp5PT0r+/FgXzMwYhbQ=;
	h=To:Subject:From:Date:From;
	b=Om9njkE0/RXzSejEFP2rkwJP4InWD4bMlzFOIN+8x0Erz5fofLP42rj8t6ShGLpLf
	 oXcIYPH32fCMWNU6hIETPoLiwxpkdYxxXImIUDfi8rnIgI4yxCwfgNJXxs6/KYi62n
	 nB50oyIkh49XZhy8DboXHILH4qP6Mq4BBPZlR2rhoqCLH98JJpvOfoBDhbjitiu+IA
	 i/UB+/iUM4BqmJBovQDRK2l5NgdII/bDEzkxJRoBnrVnSA0O1IJa+KEbAD45Mz05Ic
	 xzPFvkKmuG+DY1eHmz9dccelvs875Otxo9DD4rbpBuAut11n1UFOEeU/2/rGKUdzRK
	 CnGIAyUh2hsfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD55C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668305332.2739.10921753163743033067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19c23d79168daddaa0070ec6e4064139b8c0ef00a007b3be0cfaf4ec446b975
Date: Tue, 25 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666683053
