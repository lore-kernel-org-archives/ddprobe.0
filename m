Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5B57C
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 22:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF0B4C433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 22:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685398326;
	bh=aI4/n87dxG5gOsbmzv6igFHg/r3eqN4hPKn1DOvHArI=;
	h=To:Subject:From:Date:From;
	b=AXsiPb8HiSp73h2dclUHJIJgXdNLVxnCGMYMOkmI2Ee6Z3o/wAqiuwdQovra+T5z+
	 3naWiAE9LGlDttiSS3as+0jTMwMbay8qqwZKXZF/3TmxrAfPYvGXR1iwbqQMFcAyA3
	 wDiqdM3h+qn88L7xGGFrlHJeO0m+OFWKT4nB2erglDSebtp54nUIUz6YPawh7SBzVs
	 tNt3PE7GU6fc93IoN8wRrdbJctKNtSABto4Q5Q7Ua6CZm7CTdtvvs6S3bQ6zXp3V+C
	 cEEHNHXFLjVD9847GbIJVcCNLYLta+GZqz4lqSno56fvuJ2m88LoUqfOoYCgS2iO1a
	 9zmonxgcgQJpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE323C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 22:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168539832583.8601.183579958356337328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08281f24dc6f17fb3257a68a07d4da8b19c7c86987c55be55be252b5865eb21d
Date: Mon, 29 May 2023 22:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685398325
