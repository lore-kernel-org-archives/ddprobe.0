Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7F333C5
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF77C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667236254;
	bh=Jc7w1cyBTo0fZMr9aj4l6ZZGoFaNLBut//p7V7vZ3oU=;
	h=To:Subject:From:Date:From;
	b=NxcIFezlizeGzxERmDvL8j8elueZL7gRhGPn3oENKQOkcv70cdAha7Pojy+GvGJVv
	 /+lxRUH4j+mq0eIc7BHB9db0kBdw1RFKmX9BoL6S0la3dOWsrg3Qz4hjGK3EnXsMU3
	 iZdV8Zb8qqs2pJ51OTcFYcf1uVGLG3pcH+iV/WBJWSEWIYueJ7770/Fo5N189nIHyH
	 nGqMt7/JMLXoG82R6tNZ5rL4449YOpDDBLH9o3hUpuAh5/pu5jGRbcJb6mptXgvi7m
	 TGrc9uAcDAB3ivQeWRDu8hWiGFzzgq6bPrXGKeBldhophDJtM3tEOjPE0uBxoWKGbD
	 dFRunT9EtoGuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D139ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723625434.26110.7167134377781748923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c6a08f23eea21b998480b0946dd9a5a3bc4b4c2260c5a4ef17001051237fda
Date: Mon, 31 Oct 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667236254
