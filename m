Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7CFDF71
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 21:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 095DFC433D2
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 21:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683150606;
	bh=r0zYM+p/34T77u6CYoUZNSMO7r+dAHQ41z0u8dECwXg=;
	h=To:Subject:From:Date:From;
	b=Wv4yYyeJ4MmTyoqssgfUQQfJl4IpaYB3SJGVSe6GF5mSZBcKGyDGSr1QqZBLeNIIY
	 SUrUl7hQ1oeqY11Cs9ACtlnQ+XFmcab016Wk5bFSLuGs0ll7HFYoAgZBA6LSDnErMB
	 J0xjdXpIHbVfOHt6yKnZyIqIr3RIi6oVx9MYodLaXOQ5biw0Lw1DDmY8WQq78/1FGd
	 dP58M4MSjcow9CYDiKbn6HLQJRx259/jFHtesbf+LuePt+Bim4LCdYN9CC8YUuCfIE
	 IEOAE9iw9KtwByWEJKRaMx7GuX6A50DhK4wm9mMEHeOelUuW215HjLDEr3S67ZXHrz
	 Q/A62FTcTaI7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D02ACC77B7F
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 21:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168315060583.10999.6770902672935087485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eeebb3777f94cf39606044eae319d4dc67a3d3ad4125b2f108cfddd6867200c
Date: Wed, 03 May 2023 21:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683150605
