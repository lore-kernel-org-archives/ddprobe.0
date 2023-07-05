Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730D423D7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 09:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3C77C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 09:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688548569;
	bh=9pJU0sZfSWHME4VW1kVe2Sv6mwr/sgrdlNR8A72CIVI=;
	h=To:Subject:From:Date:From;
	b=WYqQuGXg8LLGtxAQNIXTodOlJs1vZSjNUNrg+7CM7GulxsiarU3IjJJZleuljCgM6
	 3RMAnhNPYFbsyOObimT+O/cWHsr1ISLtZZ7InfmmmbF+SMwxeo49ZCoS1fupbamJ8/
	 0YWTSAQYdBcoSyz9S5CdNDaHiTNGLLRmTvSNMMFKZ1qWGrb1UGAkQ2hK3q1oRrYYJL
	 bomn4ohDBVgJwbWND0ynQO9oYnBe8GNGJWN27He44l9CH9ImpBSd3vaLQiR62XgovU
	 pwJqyr4wEk5sS7XGeTh5Vz9N46rMKjOoC38yMTktKU2b1Lhi9TSL6wcliVlRfj24WG
	 vA9ZviFWYG5xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D277BC0015E
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 09:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168854856884.26132.11373104039158345937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58b3b19f91524cbc1e59869c5cc72a86e1393298dd7e037bcc7c14c632fb844
Date: Wed, 05 Jul 2023 09:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688548568
