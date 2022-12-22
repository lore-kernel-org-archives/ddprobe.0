Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00C37491
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C85FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671739287;
	bh=OkC6ZfuAaAOSc6evt+oR7GfnQiWiY/xFylrmCTK/c+o=;
	h=To:Subject:From:Date:From;
	b=EthjrpMH93prlASo3bfuCghwfND4dZPlyMDoKmuBP6KRdF6fAgWXL4Y8pR3c7dMTm
	 xUyrNAxvu3T+fNPc2K8/jzrYSoR8AQYw/O1O3Or0swbE1wLbYDf/HAOk5a7wcTnJvK
	 hhI4VwwNba4X8cN/bpKdKgasETb2VjB82mPMANOxWJRuPcBIi4KkID6GAdY6+Y0/hO
	 vJqyQpHX6QAAr0k3lLwb2XOJ2zc6QkjCtvM5Wm/cJ3Zd/lPRJdWOzOusKeMPEQYlgj
	 Bi47lY9pPpFRjeKLcKZB4I/+BK3N9C91Rss0Cn6PiKoI8rtIbaSwIpH/E+33cEpKxp
	 ic1qUzcgXPMzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B288C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173928741.27432.9685765094007083839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09b88d28d3135e085fd996059152aa34b3ba5e3bd4af47bb79a3b6ac87d0318c
Date: Thu, 22 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671739287
