Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F3B66FA7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2686C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688726228;
	bh=u83DgrWQ36UhdtGNqmXsOnoHgUPLV0PGv6yIUCAVJiU=;
	h=To:Subject:From:Date:From;
	b=WX0IGTy3zL/dsRESm9aSATsMcyWh6+M9NBDGH9tR+yBxzGIDUOJivsp8YgNdHh+Kq
	 nrRWG7Iw67iNhZG9Ekat35nrwiYSg2dH6q5IlC7M7WFftcnd2En9G10aoZ+eM4BE6E
	 zdnbkq1kUd7pnfCIMlYKV9krIeGTl4qPkJKFgo4cDo7frboIYlNtD3SA7bsqFGnHh/
	 IGWhsxwGtNNzZFT+sIN/VWvx1Wp3PUZOETBgVt/IVo77VfLEbTtsnHbO1MIPGbOr0L
	 ky6TcKBXwcASxwouQZXw++XY4vQehWnkfSRe6fSqODPvMostVBgWbyJmB74FalxUgz
	 prv67gp3rhHpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEBCEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 10:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872622876.21366.4896734678041493543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98650262881b2d92704d9784b1325331bcbf1192538ee2e5dd92f3e28200a7b0
Date: Fri, 07 Jul 2023 10:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688726228
