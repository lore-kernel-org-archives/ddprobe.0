Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034972F22
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5377C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671651687;
	bh=4ArivxRZVHP07XCLm3WyreBSuGMRqdTA1vWduh99WXw=;
	h=To:Subject:From:Date:From;
	b=mh3tX1zQor7ZqLR04ACU1NGi5UZbcW1cpmCv3Sl5D3ePh1Lh16AsHkjstJcnShl7x
	 qF7unV4LP0xrMrJbuhbt7oOYNEOxvGFCQQkEpZfyRQ7aH0cx4cJQWYoOkkZJbUJx23
	 iN8rk0y8dpkrk622R/Nv2sdsEYAFjXIvuCfqGMBuP5qJlrGkQ+I7iyCtlX19iXTCtK
	 1aPiOI+FtLtNQhCEM4bt05Mo4RyyneerdorwUQvZ+xZnRcMG5uw4xkQDsvFqm2PsNv
	 1IwRVPYM1sGYQYkD/afDYmH2r1uPBe2LOIx4jujy83m10cYtOcR00mHnMyQzSqRq0s
	 0asOQBzAXv6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78B23C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165168748.3043.9523735299033239741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6739889055a12f1d6dec727c40df67a6a425985070564f775ecebe9d7cad8886
Date: Wed, 21 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671651687
