Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294926110
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVv2iVI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCE8C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703308096;
	bh=O6hYUWRbUizlZE2BguR/9FDAIxnn+itVQgfwpzEYX18=;
	h=To:Subject:From:Date:From;
	b=gVv2iVI8jJgXN580OwzFRbt1/2EPuloNzNvNUuCJNFz6nvT1ojbDRExIeEUiTybW4
	 sConP5MQ2gFLLqD2CccRs4g1PXCf7F5kY5kW3KmSXItzmD7abRa9rHMzdjZvdsvT2/
	 26brLSlFUVIZPF6Bf00lp2W4tkTXtFEnXVqLShHzbbnYiUd19pjo4NJMEnZSxjF0e/
	 rlpY0fErcjBkzkxlieHgcwMPx91EoEbOaTAZJnd4ghkuquniNSYHeilaaklNr/Oprj
	 Ov9C/eziYLxPxR35+0JcRfalWJZKOau60bRVIQSW6BYKbQ9QGUOcupmFeWSqCeRs/B
	 VqOazyyM1bwVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6179CC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170330809639.23466.10074933259828593000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf0f2e25f2b6d854e5c6076348a954eeb3d64fa2ef7c326e6072aa5fa119694
Date: Sat, 23 Dec 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703308096
