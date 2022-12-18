Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2087E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE36C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671387687;
	bh=TuuLJl4+B1RaKKcQhZAenYpg3lBvJlOysBv6xIO6Yaw=;
	h=To:Subject:From:Date:From;
	b=G1rNw2ccoojAnLcqMK5r4Xs4XpUep9rF/YO4VnewuEuFjfUh5jYK9bwqqAFElGgiB
	 iVH3+QHfn1MH2hUoLZ4rVV3lQDVbsX16hskF0QD5GO9pVvWVvqh0V0ls90rlCunzKo
	 B4AvfFaK3QAwZeC/v+vbO3X7vXA3YL9LzW/+1ckXWUMsDCjUD7E4o4Xwoh368nKrah
	 EE03YFriV34VGNC3PHkq5l4yL3W0c2Ozi4ADlj8YFiAzukgafhQwLcwBskF8mcHbZF
	 WdmKCciEO+bPYisHXSYwanQlfTe+FyvAj+2dgEEiRoIhnwlN0wN32fb+DPAhhe/a7o
	 Cq32fPJT0Yaxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626EAC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138768738.12021.14679113966156226144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a03a67736a9e711599fa5744746512360cef7975309923402c0028cf913804
Date: Sun, 18 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671387687
