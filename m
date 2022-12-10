Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D067AEC4
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CADCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670648487;
	bh=i9EpPgKYDgLbmyaTgTyKnZLRWqdfGasBfCMZLr+8CXE=;
	h=To:Subject:From:Date:From;
	b=exVmUuqdamlxmXcqvWzUKSPEsxmk3Ed2L+jgFjwSrAVdzeudln8yXX7APFKsZAY78
	 BMb0yzGJO+S82WJ/JF3l4j9NwoD3ik9Vt1NGbLAiQpMHk8zLUgy8lNJh6b4OaUeSrJ
	 B6zUJ3Haa6ZHittak/drhHwyT7diVe9FJrZsaYPcCCk/MhlB7lAoMj+//XdGByi/TL
	 XiC5IlOiaeWUMMWhEcY1F4EvRAKZNVvnaSIJHJb23SVk6JykDX6ktDs3DiRRWMolmu
	 LcDeXEggJHgyPxPvKcHshesmoK1Nfl7/Cz7ahnQmelNpOPo1JWaLrNFxpgp7SUDVPJ
	 Wlc9R++YqQbIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64298C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064848738.29246.9147287175312709116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9c40f6d2eeae24b3fb31231c8a2d2b8fe6422c9d75c75a39e360ae3f36780d
Date: Sat, 10 Dec 2022 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670648487
