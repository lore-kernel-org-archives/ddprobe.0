Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FD37F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73BF8C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668558054;
	bh=7Oz7B426pQD8C0Q97s2sc25l3tPtlts2ec/pcs+Yd/g=;
	h=To:Subject:From:Date:From;
	b=ZhlW4o+CpIL9AH/gijY74lsCYiuo4WoYnyltpZVFRaA9kJUdZmsqdT2ngY6EbCtkB
	 NLH0Q5SAVomfxsSwi+nnYnXKY+JNC54h/Z8/IkxnxxoTcID6oMm6jWMgp+teI6/W2S
	 XHMBK8W7VORT/p6r8w1OlIZ2tWM5j5FU7xQDyk48hRcmYufFjd4PKTfrAR4EbBLDgX
	 39DPo9otnohOYM681EN/KzJ6c8JddYz0oaQZIGE49uU7QZwhBBvdIpw1V1ahnJJfe5
	 gzpwybLgW1NPy2t1yn6VWZiyJle6B5Ch5UswtJHpA0meLaRdkHYlMej5jscf1BbJTd
	 G4gDTTlHZH9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 575A8C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166855805434.951.18100560784494313616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc94e3077fb1727fe98b8b01254a4122d970239a6f49e0bc338cf0966b3ccadc
Date: Wed, 16 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668558054
