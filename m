Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B512A2565
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6667FC433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665396653;
	bh=f67H+ALATNkwhyeVP+52rVenbfhYR1OTngFE73zwBCI=;
	h=To:Subject:From:Date:From;
	b=ervI9yf+urfJBFunr+cZnv9S8UtvmlCk4pNmTXrhgB9jAe8C3BkXiR1Ty0GAb/ulf
	 k7+Gf4ncx4/nIBrA7foIlz8YMjdj0HBaBh8T4ydFVUH/iS4rcPh4bAim2Os5KzVufs
	 loVhWmu9T7ylJHIEXmy9eTOxAJzb7/74mdFNpf58bs1qv73uAgtaEQ9gnz452ofW3k
	 p2uLqKsU2b50j6uguXG6QNVR2PR1+e7jcNdM+0gSJi4ZAMLRC8UW3OXV5+D0nCcGJI
	 l5ZY1n8DHg1m0RLosHrfZr0d/dGrJR7frPU0tNF431HBUn1Vi4vMmj4lfC09Aylaip
	 R5c/9JZFUnPhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CC9C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166539665332.7528.16464537531852576077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a440c254fdcb343e15e02e59fec7a85ad3aab6b818c3dfc3ddcb6dad0addbbc
Date: Mon, 10 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665396653
