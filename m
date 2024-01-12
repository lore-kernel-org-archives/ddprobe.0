Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDC714F6D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pe6MRZMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94F45C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705100296;
	bh=dfQEBMyzqzKsFxERXl9HtR3lZiGaSRLNuw3YaZc/2Bg=;
	h=To:Subject:From:Date:From;
	b=Pe6MRZMlzHnXGx81NwdTwHWXN/+Rv1eYU9PoR1VTnVPwrimCpV343ICA875rz/BU2
	 tFQWS5+aRhrhN8wB8ZFORAAcvOJnIq/JHyGNNZY4RyFuAtiMEm6Yyf952x3l2nwtHe
	 yz5EzCKPgruOYqxOquasdwbxmQq/y37kOFp+sL8qcscuPA2u0GHvCSZ9HqdDpoZqdG
	 iBzOcdGDZBVGQSq6jjiFT26yDHIpGp+k2xefVq0VfmYFqgEyzxZkIfxxmGQijkjaLO
	 kLoSALRm4LkGVAUyS0SV9n1buWAx8+qsyWfN86FA9Hlz5+8/rim/Qpi7cK41EIw71U
	 8/GS1C6JEFyKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74CE7C4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170510029645.22260.12794887783483096910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4d4ebd7042f3ec2b0722d7b01defea89b91a87a80af7ac6ffe331b7049b490
Date: Fri, 12 Jan 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705100296
