Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08DB28F6B
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A301DC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672779087;
	bh=fceVdXHYSbUObByw0BN2mMNQhluFyYMu7wK+QNiVRuI=;
	h=To:Subject:From:Date:From;
	b=Y9oQrLI+aeFrz2Wj1xfZ7KZeB7uv4ZKFSv5pDCq2q5JwWZ8KS5QI978oE7qLa1UqQ
	 mpwEaMKXF3OpOU1w86CGVoY90Zxh6R2IkgPTnfIb1s0TcDZl3d8SYXpdrSCpFy8P1m
	 PjvlckgjFaLSrchklxtKCb5enRugAkU58ODaqoFf4wU3GKcHdyI8/Y6dpMR954bydn
	 je3pBYO+Y/UI/kHwl4MbT98Z0DCFTSBE18texVGOukLdj4U8ZrdvCEVbHIEz9In3Nt
	 v7H4w1o3y1WCvkhWbUSUvFAzXtI3pdr/V/CSqPCULvLaRmpVikbmHEEKS2nXXPcuqI
	 /1db3sjit6Xfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79813C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277908745.24387.10597255637088646049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc23d3e2e175cc6388e45b428a4cef8d0a18dbefb05ce1428a339042ae1c14d
Date: Tue, 03 Jan 2023 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672779087
