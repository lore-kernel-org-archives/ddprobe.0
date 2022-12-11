Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D7D10E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F81C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670748087;
	bh=NLIHqoxqhiHc56d1l9OSI8NHc1lj60huR4Lr59jYhzE=;
	h=To:Subject:From:Date:From;
	b=rd6RqnT943yKUWhu8vnN11/Ni1WAEkMBM2uu2HT8Uk1PnedhYJEiok2XyRUestyxr
	 Mqt5Uw0BP6BF7wLTCXrvM3J0Ni371MW20HBM1H/5SCsUnf3GKu8JWPwtQ/ikgu/agW
	 1XpKuUPIuQYnRAso1Ae1ueTB385VAbNrrh92GuXi3uEfIvjc/dtzhRiZi5o/lVbDH7
	 W8t8A8xhICJTQtN6+EP8JRjuZfmoUjaFGOo88ivdYaYdAK3/u0thW2N5vg7O/SA3ux
	 J5IMY9oSJ3TLIWEPAFN2/9x6uZfLBH0vioKrnNeH4hrZtjRXTlP/Xn01GpPK85w2VJ
	 SEmr3+7L9Otfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 649C4C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074808737.9759.8694112764380982276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c167d47d396befb202e8d93814335a0080a8f0ac72dca7f0981737d94ac740e5
Date: Sun, 11 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670748087
