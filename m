Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F3D23AF
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDykr1wc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E49C433C8
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699772296;
	bh=1mtC1OD1IvLLx0MoLsLs8oBxUVzoref2q7Lw07xitNc=;
	h=To:Subject:From:Date:From;
	b=PDykr1wcYFzDax+TvdrMiUobll3WO8rma7SZIBwJZXBBuHweP/ouK5sudR0HXQwMe
	 0S472wAOKEucR/gkyOogJvI2c6sN7TYQcefm0OacFnZ+wgWKRVmv+FLyL7IE1XhS5w
	 rdR6MvpRHNGTwIOjI/mVehaMLYiipBEvcJLJSIv41UbwLK2qbE7kY0vk13yYD6ERn8
	 LN3xUuBXDWtil4clPnR1RM/EOPh2NwqR0UdjYRXw3iZBfRcyOCGfVHeBU7y9nV/xQO
	 NRhB5/YKX3Q2oBRyTqXc7tlzsimqSaofA27U2dgQj/+p7Ztc1uNnlrn6Av7jBLNfCJ
	 yzJx1qmvTky4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70206C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169977229641.506.9527874120681403218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1ccf9ff7e4ee44f5b7d6bc8b490943069760e6532dc15a82bba1b860a4134a
Date: Sun, 12 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699772296
