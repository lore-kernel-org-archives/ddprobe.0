Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522DA4408
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 17:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8235C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 17:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676136245;
	bh=NtnVDHWsUGsJs4gDzAd9iOJvPtMdOvyxeA8UmsNrPZE=;
	h=To:Subject:From:Date:From;
	b=DMXigzMNTYqhvT0MrcQ8ADWT43kfutg7gjNtd7C06Qq8nWcCX/pGZLSRyUv2sVTxj
	 zZUzmsgAqZD2xdpI9yycxKFVL7LGLTe8siaID5ycOwmu8OWYIDnXD3YpJTTQ02sQmN
	 Owg48nHQB8fsCnSyxkfk+nNACbZimeeXi/c6dpWBZAUbk+z4gD2e02l2/wGpEN0LwC
	 zDAVzCMVfyodHqH0VrSo9yBl52u0H1MkW8Fbmt5HQNneXEwAp777wEjOhDBoRnoGfp
	 Vfrk+yYBzaG9bO/4cs1mnE9Cua18v1FhL2YOQxFq3KCEb9a8aPUSR7bk6HFasevgdx
	 MZVNYvGGK1G1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C483BC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 17:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167613624578.24469.7539623094059706686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a3b8cb442ed0385cb2725734d68afa142b4fae0b2fbbe8019fd8f5bafe021b
Date: Sat, 11 Feb 2023 17:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676136245
