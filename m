Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650E91FC1
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 04:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7FBC433C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 04:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182708;
	bh=f0YUjDo6upkbhm9S4EOk5rcL21ZYG0LR6bnTTnI4w2E=;
	h=To:Subject:From:Date:From;
	b=g9+QVZGvQwWJJKWXGv169Uwn1S1mWl8j1u9iCy3sjspyJJeXwc6ByeYI0nFEXfweU
	 vRmsdVOt0gnMqzHTCcO71ve3qU9LL47lqUVcRudmE2bz0LGmUqgHTzLURyRkxByaFM
	 Q/vdiDZMx0rBKTW009p6e2eJEz2tFY4m2sZZTS6GS88i3He6ojF8t8P7HIwWne6lcH
	 C9R59yOG3BCCrDASD5DItDJoMCqHxY2d1FslpvxgJiXJyLD3l8gesjFAS4NJe6b/RN
	 l0T5Fe9Tp0vsvNT/kdoWWsax2a2P+BnNOIlxf5Xdz/yPTMQ35O9m95n6/k1sVmYInW
	 Jz3IrGfMTiBzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0796CE79AD
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 04:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169518270871.31071.11167867958341411037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a70add2fdd09678814f3251104783ff4913b09f4f639a79cf04e4793324110e
Date: Wed, 20 Sep 2023 04:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695182708
