Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A8E621
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829CEC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671345687;
	bh=7fbXYG6jYy64wcLQfWMwbEs+gxKSmL7xz3BG8pnNGQE=;
	h=To:Subject:From:Date:From;
	b=ssgntCk1sEn+EcaEnI9x97yLsfuzKjI6sKRCdmttko8YVfQvc1G+2yrf3vlB8gvJI
	 flD4oVIvUoFP9l7RYzP7G/3OFJNY3ppgzUADfk6iCdEO33OxPNcz7HPNsviXiHyhV/
	 nQrrfYSN8/8eC47FZJbVZAzXTW20pv/uHIb7y1peJlAVcue1O0toQNM6rchiMS5gzB
	 XA2h8FKDYm/+Y3Jf4weTxabwYO4f1MkGRG2gfzGyo7noLsWM6hgCa0JWtasu3m7l6j
	 L2ZlERf5EbnlZKm1a8WegjLTvJ6dIy3b1giSfSX5rc03RKjkCPUaSxGTv3ONK95W7E
	 VQ6uR0R/+L3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AC8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167134568741.4985.8703201024946591973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6187d690fb7433c8837a6cfa2467eef71115f89bcba059764c60ec7158988b9f
Date: Sun, 18 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671345687
