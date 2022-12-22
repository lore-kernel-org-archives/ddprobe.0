Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25467475
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82952C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671733287;
	bh=LvTC3FF1O0EYpbBOQPUiI7km6HQ6VOuJtc3opB/snRQ=;
	h=To:Subject:From:Date:From;
	b=GeNPhjzbT/loBkHmLJs28nvLIuxK1gU4Z3hIsnhlC6K+StBK2cBrlc9kJ2geHdcFA
	 kOpEeVvpsgo5BM/YduXMerrMCads8yKDLVYM0o4JiCE5x4Pn/7EcAS2H69c4FGtQXF
	 oGSQ7wjcWqkkv5+IMqs/4q7ig5UksuTq8pEWAmesPFzxFCSnXZEX00eTjxRnZuhZbe
	 e4TKSu+O30qlyL31oBhEbJYmvjxA4/No4tJmlsrilwq1sdSCjKdng9zE96UPVbWi21
	 +R8yqQ9aoo32tCC/+3Y3QfNEZppYWZpAhnFnrvUSWjfn+FyQyRoyp+uNA3xAV2U4VU
	 E4rUljvwBQ5NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CA8C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173328741.28521.8926686352844627195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26737a2b5226b4f5200be5fad3437cda8325f23abad3cd469feb47cea435cf1b
Date: Thu, 22 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671733287
