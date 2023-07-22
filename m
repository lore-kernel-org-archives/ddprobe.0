Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CBC63C7
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 02:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CC9C433C8
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 02:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689993728;
	bh=DPmoswPazWlbwxgyObiCR16uRi9gg1ERN1QioluFX8o=;
	h=To:Subject:From:Date:From;
	b=AedlnornnVWvRm2/S7DQB0k1kYkvgCjMzrlClO7sGIfChbRnP9Nbrv3HKiPn+Q6da
	 +zFsMR0t66jwgYxP2GWyymvaDjXveeSgSNjfO0/m+4leyDqhITLs7dYH9ShGPxGEAG
	 ZRI9dfjV7PpFTrXD3asTvkCZHG4/4+QjtzUUzbPiPjyxZ3ys/rXO9nHwbqYs81kR2t
	 8//fcwrobLjv6Mxu5kanQuF4Ac8BdFM9aqBKwlff8GtDjBTYZxJjnP8SqHjbvQWY+t
	 T6EC9qv6CuWFHv1+prSHMPjihvGtg1JPleEk1rsZ1z12UyQnKGN2hUtzUXXVashQri
	 jdLcSBvBCPYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A806AEB64DD
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 02:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168999372868.2321.11708100244986918403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f8a808e7c26f657b597535c42e0dd84b397c7e0a0a1ba7b222be42cc4d5d2c
Date: Sat, 22 Jul 2023 02:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689993728
