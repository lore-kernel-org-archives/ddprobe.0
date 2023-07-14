Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFA479F0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 08:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C394FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 08:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689322268;
	bh=GQBLFVWPL/Xh0otDBQlcsGG7f6L/xGPauWMzvu93eHI=;
	h=To:Subject:From:Date:From;
	b=AhoY7aJHN2lwF5XcNoiTub0HfFoYbs5zuS/cGW89P/3xCSYPCiUVKfxheIkMuFMMO
	 ikdbbCWnSVfTy4wnHB+cnx42fYVISLm0JENhQ65MXE4vOpX/y6rRhj4cNBX6RogtSk
	 ulmLmtq2ep+UjXfGF27ZvIirEgBrIirO5yATZdin6XzwsxFDV6YGpQ4UUunBVHpVc7
	 OGzX96sAq5KGVybF+5DrBlXjLmwKxzg9/8r22SgM5jHa4XtzcmV6CErhWdKD4736jX
	 QfZE5u+hoAufYby1DgQADqoPTYIhKo8AUOP5WowIiTYOMrwDqHizekMB4Nn1XJKDAB
	 2Kab+2Gx3Pbfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB8CEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 08:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168932226868.5456.7194782162060726328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db97f6e8c9394321aa7f3a977edbafb1ed06f76defe4e08966434909fd6c3347
Date: Fri, 14 Jul 2023 08:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689322268
