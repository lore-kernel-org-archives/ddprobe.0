Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368CF7E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 04:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4E6C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671425487;
	bh=jbuoRhnUzE3yFdSOlH/KCfIkf36rBFyCV5Hy5Q/smB4=;
	h=To:Subject:From:Date:From;
	b=Gxvhhv+u3XFPcdTlpOKRq78XttO5oWW9wP0pw5QdwJqweiOztiWdylgMVPRx2ogHm
	 4NryDQxcX/jk88pGwbxd7AhGLRHG8jJrxajPkcRkUN/J6ff8zYkue3B2TQNuq5RYPF
	 h+NJ8cWUiX5sH719ayOLmNSB6x735FjOl4R6XmT7KgraVmcs8TGPtzTvbFKVFDndSS
	 abP9doBjUCC3MygXBfwq0uV5CN1A79/Lo70BM4lf7jvf2s8GIZyNU13q067kfYsgj0
	 G4lVBzEASRFBE9qo42DhGRQ+7gEcyf684VlzRglJZP+xo00HOHn61ulOertRj/dXg6
	 dfEc6DjTp6IHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BA54C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142548750.31989.1518252130858012664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aea1d26b5d9121bb0e1fade4d2cd8b199ffbc7e1b3f2e63c11869b57be38fe3
Date: Mon, 19 Dec 2022 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671425487
