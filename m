Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADDA1FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 719C8C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667760054;
	bh=EJXtV0ZPVgBZRPonhvpehlvLfrgH87PmKWl2ix7QzS4=;
	h=To:Subject:From:Date:From;
	b=gjLWFa8kbfiugG5J9RSADS8ki95HV0oNtnbQxLxcu5VwKrqAzkRunwMgpoH2NkreA
	 nwMy3S7Q0tSTyVsdXRzMxYD4uX1bgpGI5C0VJ/gK2pT2xdSqXQFW92H1IvlLSwD9XA
	 vXOAEi1qprxeFMfCafAvxsG/mFVZlzCQGVNHIITBUnW68wq2bAsqc59Tt5unStbYSm
	 Tml6VUmfmjHj6KRPDiVPBrJh7P8oGj2k9CL8iRoaYPQoUX2GgQ5um5uQno+1h683oH
	 bXgrrEAJ/qEq3ZA2WgK3+5te6cwhqI+F0YEKTEPjpaQfRNhNOD437TO2o1nxcb497A
	 y9jmSaQOUeYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58694C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166776005435.25495.7227529981275293761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eb817d63857ca415360c43980725b193959a9c8fa8b266aae72cc3a16f81373
Date: Sun, 06 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667760054
