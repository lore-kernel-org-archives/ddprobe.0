Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BA37B
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B962C433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664643053;
	bh=532LwMm1hCk15/Wyl4CYtLUH0Lr1M2dmlzGTC25MZ50=;
	h=To:Subject:From:Date:From;
	b=YFd5XNdaj9ZSiAsaxV87IFZ//cnhRcDiCLgC2WTwffXXmOVB55u2+/P3fd7YCoMw5
	 68UVZe1BfpO3+97H6tPdr2Bg3GlB6U22BY4mE5IuRo9Pwi4fHbpfjDiV/WsYp8hfNF
	 Ec/RGG27/zVRrvyfIFVf6bNe6/GwZXxtdywGd2x0mZjj2RcLy0L14j8UJjFhgSU59W
	 brgJcaS4++ASHG1t6Yk9Fxq37Ui2Q/orax6+x69quZ3P6Ohm3aEqsc6LdVOxLdE9hD
	 C4Bwni8unKfroVNEvNFkzYnQq7Wonyo0uSqHvvWiCI/49Vs8HeMClUvuWUj953Gpor
	 r6opmlDOHryxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 518B1C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166464305332.30840.1805095074820263808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f5f615beec5e34925fb5f5a3c95c2c9d2c2565843f4e0eba5db9f0f1679520
Date: Sat, 01 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664643053
