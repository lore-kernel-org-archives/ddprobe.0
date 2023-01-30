Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5CD378
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 02:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82DAC433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 02:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675045385;
	bh=neTEzGkzHqaL1LDB8mh4AkW/Ly/GtCHDeN163tiDLe4=;
	h=To:Subject:From:Date:From;
	b=kcmJpV4i8Fcqcy4EIovA619EpZ5m99ZVylXBpkmqey12tn2TKhWDDI9Ipx49GPwUq
	 rPxkrMybQDJ0npSD6MGOOTlc6Q2LoXj8rbNHVxhOY+So3woQKenmKWAxnk862XQlW4
	 o1Hj2MCJI2Yfh/sqDC5Z2uHTBEQC/Vc08qZnnfPDtFZSQ09SxeLwaAVFAvGQBJbwRz
	 IO8/YI9j6pp0YaXw/9679xCTw3sbROoY3XK2XdxjaeN26riPG/akZRQM+oW/aS4rGO
	 o1Q+eBX+XP4HHetwyx1p2vSPLO+tcP+xjNgtt6FSBFNBvVmYwUvSmDhncpEaDglXrB
	 aj/lUQg3Vza4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA13C636CC
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 02:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167504538577.16924.5535028060242564832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ba7d6b74ddbe79d85c16fd7ebd12c0d3e49328b84aea0ade77d8891a2dfca2
Date: Mon, 30 Jan 2023 02:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675045385
