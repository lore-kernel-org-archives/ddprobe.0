Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC49217EF
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA4AC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669559454;
	bh=kz1buw2Lfu9yi4NBcgkJAY3PvRaDYyR/KQnK8PLYIeg=;
	h=To:Subject:From:Date:From;
	b=NpnrtkwqWatMyLx1Mv413GdvVS9CEHUcSa5b/eYwoAzwRiIxHTYvzzHh2WOlftQ+R
	 O2x4ftVkUVARlUGPm9SPr2pUEySZhfRREo905CNYeWQ9tqOCn0b3pWR/miIndQNwCj
	 Gn+SY0Jn3KwAOaJNcK8pdx6f5yMZf9UUTWYUyOrgpG20AcPuNFbQEWcbiQFIyhYTV1
	 Fs/zztMEOaRaRIcgLousFd8DaCj8y4zF2hG/N6v898eQ57ICG2q3vAPLFZ2YpgLhNZ
	 dGBxM220b8/8YM19GmFNRXiG0BY93WN5APoTOTLRm/bBmz1OZX+4ibP01cq1sg7IG0
	 UQ+HTWZTQqGlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528F9C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166955945431.16441.16557644453401091866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794f7b42ceed33c9fa034370cef1ee73277d8b95a5b4bf05b48f5b07610040f5
Date: Sun, 27 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669559454
