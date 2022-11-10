Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6B1AA490
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77041C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668096054;
	bh=SR4r7Og6FE7B07mVpdtqbZqAT5Tee1k7SV/nXZ1JGns=;
	h=To:Subject:From:Date:From;
	b=CyIh2Vb+FcAsCNJb/36zjuERBsyk+G7OiG4qCxMDDJK/q67H0m07LNrKQuxIRk5Li
	 7k+r5xBjTqKYoUrWyGwnG/SOYo2981zMnpLMZZS+oIB26h/WxMiy6V5ajnlM5NOVxg
	 5Qk0lWmJgQB89wL3eolz+DN/XyHFXKG8B8zG00EoxtOl9F0gbC1Ht0pbeNt0sEbiQO
	 q7XRcEuUwE0VKS7kl4JhysMPVoGsoflDqmuN13Ip4QbCGutAmEm34gorT2n1XQCI8G
	 KgzOqsKexxXkqCGtCmfMmcex2UFELtzQ2271FP2QQdFTJ788RmPX+4n+MZobyg3faC
	 EdRlCn9al8wtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5E0C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166809605431.16277.16362695997994989978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34c9787c6c1e966d308667890bf92186ece1c1978df2a98369b0e2cd32fe63ba
Date: Thu, 10 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668096054
