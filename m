Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2BF720E8
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 12:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C249C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 12:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661776252;
	bh=TCIPXhwa6XQhVgyxbDDjMYgnK+14OTJpMp4+b2Vz4RY=;
	h=To:Subject:From:Date:From;
	b=X6gYNODPSev3Jk5iSHJ0V+d3x76Hl9aseTqqU2dsfJLyhrhkkQx6xUzx5LYYFFGPo
	 f8zhOI+YAnvDh7otAQzpw4UbVNEQoDP99gvqi9asY4dIdhVo4fr+S2cukukq//fuZ1
	 f9He+RKoG6FMWbRUQ6YYV6PNh3XuPxU7TKLhoJvKUrj1GfhWN4jx1Cpxmwebsyp9sl
	 w6pbKfASZXpVGSIdZJ4veybwRM2X0cnmW0sSAiqWUuchbCP49izH5/TrYF6IOPnhCe
	 em4mGkA+3qnfsOoCS6SOuLssCgQ3cS4x8XAak0n/rgbBgjAQBtuk99oy9q3BMSr4j0
	 NNG9V8412b48w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65663ECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 12:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177625240.23274.999303800754516180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcffd630373e0feb3ff204d4f6d23e8008e9aaec2ef7c81e19dca534a1b348b9
Date: Mon, 29 Aug 2022 12:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661776252
