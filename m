Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7501ADDA0
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 16:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF402C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693930448;
	bh=ahwlRnno0HHh5eGMV5CpdXlvorkDyKfmy9nK6CN95uU=;
	h=To:Subject:From:Date:From;
	b=tcLXGX7ZcqGjmCr0hC3zhVHqfPVxMk4QGkYjZBNPiqdvFF3c3xOUymeiiVq8A5ail
	 GEtbl2iRd1ZGlitV1JR95ioJY89ffN0ixpyWAIpy93Z9NJpCym8VoQx55o5h2HAMxp
	 deXLhqTR2ivaQd3uSLHwbdCKLB3OckvIwaZU9E5PTGleEjznp9CqghrQO/tZHyUwwZ
	 YktLQLOGJljQtFXrdGb4vHqHk2K+EYR+htBsbtXfgP9fwLTKtZ9+ldMs5Z0CDNn93/
	 fdiu6DnBxAZPxRm3n4nBTgQUQk9hxpX0b3xbUTz9r6u7PJ0COQb+ZKLQKsd/K9bNnI
	 wjq9MuWK7SLBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3394CA0FE2
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169393044866.13071.8937325539904092303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a037058be6f971bf4f3b0b4a1709015588ed6b1e30298568187573ac09ab15e8
Date: Tue, 05 Sep 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693930448
