Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355DA4E1BA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dokJfth1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8239FC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704914296;
	bh=1DBpvMH1NAFoRGMaoLnoEKXrupT+ZhHWyz/tUaf9yfU=;
	h=To:Subject:From:Date:From;
	b=dokJfth1abFIXtgE4g2f6gR1/c3kEpqBBeBl9Py3P4dibmVPFQ2tDmID+c4bZsIRg
	 dLXHpSQNFIxdF3ll8WbTAXwTa6tq0QKCREEzh5w/tyvD6GWE7gFBWL63vN2pDTItBP
	 RZOBk+smA+EBkCRUrXy4bx5mp9LxKhUjMMRYBzUl3rw2319VxqJ4ZFLJrDCpnzSzJO
	 r/a+Sn+NwrmwRMmlEJmERtkQ6E95/yUKtxH99mjx29GxsRvT4cqYVQ+ecayN5U2ilI
	 pUvlyLfNUrLLhjVHVf/Y8KMIpZaMXR6Nql/UMEGK3F9HZBTd7KyuGUDteJ24nGFuTh
	 5DoyKC7q2dCqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610BEC4707B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170491429638.389.10899025318073778131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442adbfa472ec3015b000d89c1c062b89b515870c334625d5b0d25eb67470297
Date: Wed, 10 Jan 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704914296
