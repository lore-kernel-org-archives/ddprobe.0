Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B66514C83
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67C6BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663090253;
	bh=8GKNmaG2GLIRQ3fvL+GfElq3tK5qkkXVX+hnrEdFs1Y=;
	h=To:Subject:From:Date:From;
	b=WBwjhNhG/28hO6drfpphzwCkQk8/K4HeIQ8O3RGFs+k9fRGdCYVjd7x5msxcPE1Sj
	 LHcnKsAUyQCvjgCIR/teDIxuyZBp1UsnBp0Ue52uN9QE7dYk2/W/9mtyN3q8H2lyb8
	 pzWbSgkLsiD/V6EpS9QWd7ralTmR0btYjr3cq6JYLFtWraRStMl6c2yyzAzSbP2Q67
	 yp4T3WUU7X6leZz02ltJzWKbb9LBQUmgDT8L7LqwJKXXz+8h2fU8Xtj2V8iF2XKfG7
	 K3LubjClXSlIS4wSRiMk20RkhNr1Z/oqF30MiCuVwc4oXEOKG0dsYbchMGohMVpBmb
	 bPXiX3XxG4/sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C42C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166309025332.6272.6629020866299150562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2996f8747060cce609d059f1fe93d5ad61b407f8864785a446b70816b7aeb332
Date: Tue, 13 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663090253
