Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76A1EC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CF5C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673770287;
	bh=B78YAuc+pCMDmgs0o8xaH9cx5mGYDbyhncaWSC3+i1U=;
	h=To:Subject:From:Date:From;
	b=C1yt+Ce2LBTm+DaWbHhN4K16AMYpRDDEdrHGQtC4Y/YfZXYHvCopGB1F7N3Xqks73
	 mAK1R9VWdSdCMSE/yLiSdfTVAPeLsFRXbbWP68Gep3cU/305rxZ/3NpUNEVybqrA6e
	 6JIV+MfxumJRemAuZmaXGi8HvH4BR21rvzN3TZMv78LwLtP0CEz03vUR4xESgQkZRu
	 1rGBIxcgmozuuaau/72+L9Gkh6ghlm0dkjk+f1n2g6j8JB0A15zb02mjbgpnS7HdnO
	 8caWRQzgcJg0IK5+nuQZK2r6Y2M9v66hhoGUix1iEfCt236+cA7fyTsuDCxW7rq6w3
	 hdFZmJXmYn66A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A73C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377028740.11857.1579044202794214922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecc95e590ae9f95315b7b9bf8c97094d7021eac69aa5284d3c12ae8757f6f34
Date: Sun, 15 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673770287
