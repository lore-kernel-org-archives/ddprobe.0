Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62279814
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 06:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FF5C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 06:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693119248;
	bh=qEOcFmmaQ/5en4eIFUje4QGNkW9e9xeANj/HbMj07UE=;
	h=To:Subject:From:Date:From;
	b=Qi6sZcECC7lld/tDkB/rtSuMt/B0PyEOeOA+U3RL3e1cVWi13DW+3VyqlVtiY4eCU
	 bfxIqdWuinblMxB7hC1cCRW+jFnnLYMRy0owtGiWH1NgZ0uSqfD/LDzQ8fHwUrOHt1
	 VbYLWZkYXiXT0TpNny0LPrZmCKfKMYikTK5Ft3UyozP3iA7DEQ3vJmwxJ+TenhnsN2
	 iB06JUXLbvdh4V8R4ys/0bRouvXaD1ot6c8MUntznktMY5cMrNcllU1j2q6jFoc970
	 t4GfhA43cMLocGoF3T+zE2uEaUUH0bbLOd76ElrJHzGfQ9XPruAV85pz4T4m3Elw1R
	 OXKJXN1qr6gKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7949C83F10
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 06:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169311924866.9320.9546603482165441890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2db1b1c9a3c3cec7ca1cbff330446dec6c5d50e8c04bf97ac10bc1a4347f5d9
Date: Sun, 27 Aug 2023 06:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693119248
