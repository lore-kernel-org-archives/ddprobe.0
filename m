Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5042AC8E3
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 15:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA99EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 15:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687966388;
	bh=y8WCD9PHITsrPrAR+2MBCxfNAxGMzpm4iO2ujCNk/28=;
	h=To:Subject:From:Date:From;
	b=UEBlDM3UA5kOBcTOXyoND7lNMdGwNVkhJ0fOON97eSI5snU0rhU0wC0Gyf+xB9rwO
	 nxw+3H8Gc3e8c57U1xTafBuaK25q/joFlC29CzCKydy4/kzqvbZnzb4oexeyYSYRC5
	 L2eLroL+GiOSrO1X7qpAcv4K2eIaVKKmm/pXW3saiiYepIyLTZVz4mYs9IFN3TvwSi
	 3qjlYcO66W0a7AxnQufJygCl15d6HnxHm9jrypledXd5DotqYVTZAZ73P6+U5pEdam
	 /NyLyf4CfacFfQ6T0DC7caFALBAvwI7v02onvPaudmw7h+k++/fum9gWclMMdC8JOE
	 vTUlt7+FJjBxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3220EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 15:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168796638866.25872.1012144482631087823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc743dab05760ec7035abcbb93b73bfeb0fb4d0b5b54c8739d4e3b6ea2147e70
Date: Wed, 28 Jun 2023 15:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687966388
