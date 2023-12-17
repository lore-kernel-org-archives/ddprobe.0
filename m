Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06620ED8
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Epft8Gi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A917C433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702779496;
	bh=yWSQl8XapXblqphH8pIil63ERbt+xxMBfz71T3UYtbs=;
	h=To:Subject:From:Date:From;
	b=Epft8Gi170mdU9EDcPhhamXCKp/fSyia9zGN0VK4zry6mrMP06D8O0tohoBpKBEFA
	 S4TG2lXiAfc3iH62cMUxAjK9joDQxLT/IciqXFgngf+twrsqkdNZegR8sX3ascBRrx
	 Ljq9GdIAdAniuV4KRQHLvAjStBuP83Dw4NF4AsEeEqJQRGzDCmA30urEKe7ym3q0W6
	 R0Xegd5jJnzpbfiPDKkliz4myAWalIboK7g7c5wp07kqq7y91X92UqL7QOqAPq4rsj
	 +9UBhKJ3mAi1taj14dVxByV1I5PVn/CJ9lnH2Rso3Jou59e7Dz6VShL4NxrVnMkhss
	 BX5PxHcNFwQmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6349FC41535
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170277949637.26008.12398804579013788770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac756a0a0cf428a79f496d225ffc6c96f6a52a625c1fb57df46637013500f4c
Date: Sun, 17 Dec 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702779496
