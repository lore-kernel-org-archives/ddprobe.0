Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1601114A98
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ktirbbj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79865C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702030696;
	bh=wd4+pzJRcA/r+kt3/+tCnLMXKTwQKQj8kBt+Xlv3q8E=;
	h=To:Subject:From:Date:From;
	b=Ktirbbj52TjLe8tV4GtXL/0w2oxwIb6zmjR4I+xXLRt60+K5eggXRQmf9Uyz2aYS5
	 /tQXChgLn+MRFZvO/GZse2E/BVeZLFsmxOaVpy1YIE0w4ckIPw6rsoqSkIBhu8Fgvs
	 BekIhgt6yy0/3hd68bTKFgycBYzTzJbKQH3dg9k8LMgfllFmkXtkepBHF0HLKpkQBY
	 qp2YZldmbsiKxuVMZToGqTiZUfrZ4Rbcn1Go8SarJ3iCtP0VWsMMzmpACayRifmQ1s
	 AxeVS2Do4z34E/EsRPauYNn00jYRAlCLNgyWblTlJEspkCN7JUYoaVdkO33Qq50tMJ
	 fpeDl+hVuewgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFB4C4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170203069637.21739.9503487530734811492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9602f18332cdb62a5345c7ccbf354f79a35ce8e352a30ca3e0597271615a5d7c
Date: Fri, 08 Dec 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702030696
