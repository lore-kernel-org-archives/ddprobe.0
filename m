Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED3920EE
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 08:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 007FEC433EF
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 08:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681287726;
	bh=weoMm45tJIHIq4cAGK3K/NTv/m3MF7pkLPVybCOC4ak=;
	h=To:Subject:From:Date:From;
	b=Yf2PClaM0HiSQ7QBisOM8rFmwxw2TMLWm9fRrAPfD4v/ZZZ9dpd7rlxP8CrBlA6en
	 PFwxm6w17+oKI+Rpd1aXLLZTZTxI6v3qStp4fBQUqapv/cPtpPfCNvs5a5UZ8tLhKJ
	 3Xf1Ew2xc04HPfoZdGS/9RIuXtpzyTTE3rVANs5dJRwuH6ds8WYr2FLE/p2GgapaZ6
	 wK2T38TcYQCMjk9RvkCNJ1mv6/eX5qoz9wB9UDcCAIiY/WUrivMslkh12EREwUD213
	 vCrXW6DbpWLwequvWu61t21Y5IiigwA7u6LTJrBBJnoipItRL5xKv1iZwUIbHDreSL
	 lo65Xi9TSY7BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA042C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 08:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168128772588.5930.18188019256037503919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9321c586e77bc5facec7cabd685d970920291a72a0fc8c55d5dde1df0bfe4d
Date: Wed, 12 Apr 2023 08:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681287725
