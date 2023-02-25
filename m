Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46CBDD2EC
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 01:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92C2C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 01:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677287705;
	bh=yJrloqyFkESmJgVLooAUl6zU1Xp4jXaIK9u3TWP/RC8=;
	h=To:Subject:From:Date:From;
	b=jlVZaYKBB9oWZ+GpHRnNzuQmOPpOkduzl/rIDZBcqnC0RHQ5P3YZUtv2x2LrvTSr0
	 V5PM2qmJTea9e2ReVWCqTSlSNRriXi1+kbmAS/wTKOSLDpZv7F8oqRpq+Fv+vUEVuz
	 UflytoJ91hqYgarbCgbajT1GWFvSWKuIKWY06H3r9MyhsKY/ZJK1o/CBRCCfREiVoJ
	 hEpAhnpVi066kp19j4BuORfeztZBzgjBHTxXLKEePnkruetwRFaKxozkQ1+NR+XKVM
	 x2r373vFBYxwn7loSHUhDhJ8pbopRRQOHbYXQq6wAqf5hwxbWkO2X8nNSEGliDy9fo
	 9cesiGAfx4o4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA5E2C64ED8
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 01:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167728770575.699.13966205907691673423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e36dcac4e6c68661dea8a8a6e9939a251df61bd9ee479e9cada1c8d45c1f4a2
Date: Sat, 25 Feb 2023 01:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677287705
