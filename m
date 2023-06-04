Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DF017E
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 00:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB25C433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 00:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685839085;
	bh=bcdFHiys5IE0xZxu0ykjCLDqNtmx1HD0PpB6F5isxmY=;
	h=To:Subject:From:Date:From;
	b=r6lZgEoMwTWx0Tx7Hvml43pSBmL4ahggbox/UdUhElWaXpNpzgWzm06qT6iZYXMS4
	 Pq6zEup1CP5EYCTRdBvaAOVYpkTcnCNhJTu9Fz5KfISPI/Xh1C6uyWB2eShit3eI1c
	 eRt3UXTDyeWFQwLKjeiov5cNXBJ3mxQ75Zk0cA/6sQYrNC+tmGi4b3RQDrdq25ogq3
	 rWRcUTB75Y5UNiZv5JAMRO/2jkv1ePJFnRvcIVuapdobTF2yR02MX4WKDycKZCnzgn
	 MrdGR51mRkp/dpubrz8FLODdtxTv7+iXDk/9Cf0KdFyVsRx4DJrl6ohNotDaHqhxQF
	 EKExVtiZQZ2Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE710C77B7A
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 00:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168583908574.504.755386620422355532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdd702e62ff542be2fcd42cb6bbcf9b24acafd87a6979163b042cf31a9af5e0
Date: Sun, 04 Jun 2023 00:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685839085
