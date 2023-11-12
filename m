Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287F514F7C
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yb3PDGy2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F267C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699808896;
	bh=0NRcYV0B0pP80Zp5tkH21zeN5xfXtjpAUUlSmu/pUbY=;
	h=To:Subject:From:Date:From;
	b=Yb3PDGy2xbDdDqJTL2LjXV1WpnP6Z0lU+pBq6nBVp+sF9nb1Cdfh1DigFfPnaQKPx
	 KcH0Xg4WTAA7LFvNCP2PGnubjuHDY03metXC0Mkyk1KZBrKCgZl31SAbQ8dDy4gybP
	 LaZuCtQ9bm1acnQJ24nTbM4ia3tRuWh/6rdHLVsQjgWAK+o2CeUirxca7S2MFF/zHq
	 IER9oHkwRA5omiaDwxXPTpkSKSwsD/6eTD6aJdEQLqWHNiOEenWRATXyR9vil2bq6U
	 8d2LujLMjprQ6wqjY93wghO9U8n96VJwj5Z0Itslmgi42ACdARkYSDTxuLWiLGQ5R1
	 jhmxGYRIrqrFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 716A9C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169980889645.31295.17606016629787722597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80dd3fafeaa8be6e68dfe6c8dd4e949bbefefbb149f30706c00096cd999451d
Date: Sun, 12 Nov 2023 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699808896
