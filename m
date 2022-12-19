Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBF8EC2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 779FDC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671430887;
	bh=OpRYsXd/e1/1b0TPXzyj4uES+IE2jJvwW/Gu0lNm+Tk=;
	h=To:Subject:From:Date:From;
	b=mUCvicYdw/O8Q/CUsrC6/DeleewAHScg9Rcoo6llitBARcEz+atk6ztpqoW98pHdX
	 r5Jx4Isgj30nv7xbP98tFh1Bx7RChJqwlYEtVhVU/q5aocwCJ3HxxSG6lAaewin8K3
	 uJFiC5K+qeFvIdgAdW6YMaQxccBrav9rVxEtkmfeCI7goZGg7x+JY5BGWxHlqEl7rl
	 hur9sk+H0lQJmjqGMJ8dFBCtBblGJjxGPWzECOQYqpMN5oePtwyF0ZrJ00IHLYxGZy
	 EA611uj5cxUA2acA54uIA/wjcEXmZyObL+ygH6bDBj7u98X1rkiXtddI1d3PPp0dN4
	 cbBAum6g5YESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAABC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143088737.25737.1405260409112830782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c67d7ee805333327a7da248bc738335caf8390fcc91d2103ca9bb458c4a3863
Date: Mon, 19 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671430887
