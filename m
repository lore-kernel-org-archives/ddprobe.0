Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B119E1427F
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9dIbqhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAE9C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702124296;
	bh=CnEzAyV1SsYMP90d+H52bG6184kxM96PUBpBAeMhoVU=;
	h=To:Subject:From:Date:From;
	b=G9dIbqhxi/NdIelnXK1SgWxpGPKWdxBSshIkgNpgFEdQxGdLABVitMRJiK+DYB4kF
	 aRlTT3PmylmudK+23dwOu9Mn77RdUYb7i+QN67LDJdev9WreJb+s1uK8bry9KMU5+l
	 qZe1OW5O1BLMWlYRRcHA71YC8ECyARg0lXpQdnm1wYrKSSzwrg82J2B1Sgqdfrckyq
	 Zr6UjgmhLokmjw1vzzCWJ/oV+A+TfjDIqWI31jmcGOnq+WWfS8tTta2+ve7Ck8OQSH
	 l13tLMK4qZ6Sfgf3BaDLF7G+DMG+WfCbPalKPBgHdp7/NJgH+yqBvKwz9AXafe005t
	 nu5SxD0KEy9jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E862C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170212429636.18072.14259004860618402500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c00f62d60afe952599b589b69fdf7486fe1bdd3e86b5f80c275a48adcb7297
Date: Sat, 09 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702124296
