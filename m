Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2267B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B28EC433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671866487;
	bh=GDSTiuKIQ0prVj0N43mZU7tIL9bYTwAMUz6Tbgf2nHU=;
	h=To:Subject:From:Date:From;
	b=UkY//y33Zn/Rpxt7jKpY/u3YmPzOD7xi4Q3kE8SmlQhStreV9a75OehlXGNYYpWho
	 7t2gg7JDaHBQZo+53ZqscuInmISJa6MuJ0mPKoUcb/FW/LFtATx4KSR7tfFwMzA1BW
	 kbWhp8/iPzxNTy1FyHOdSgSurkaUAagmop6BYRZounItS8vb018ySKlhhMngqO/wOI
	 vvvYBIySfLNV5hVpml0YoyO3YP5C85EmurgJk9j2WN/BtcwEWqApDOLb21NNwxfiwj
	 sKt8QtlIXHYB2MiwxnE0qozAJTjywnPxkQOKCd61ghxA9iLLbXNWQhUr4qPQilW5qZ
	 LEBXuyluEIuTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D3FDC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186648743.10687.9687611118115615679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868ba3036a301158a284c6e6bb1675c283e7a40a0035affa202c89ce32e0bf98
Date: Sat, 24 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671866487
