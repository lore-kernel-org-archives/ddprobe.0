Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C30BEA8
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 03:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CE6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 03:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681617305;
	bh=HBNxsCSnY6mU/Ae7ieYkrQ3jn1iuRMKiy0PQ3XWzD3U=;
	h=To:Subject:From:Date:From;
	b=D5oqa7nJlOGMxj8Y/rpmMzfDtLHl6sgoZwfWqPoRe2hm3Qk6pzcU3fJ3p+owzjbWR
	 Dm8jSf8GAE0O27XTF7LuwRTdD3ksSOZxf2XY5nI/qa26tcvU1wALZf7lSsPm6t2yKL
	 TNCKr8x5uRve87CAY1LWwxRTKhhpTesnOSixVANTiizqsSNaXH1Xxd3aJCUeDLUaA2
	 3LDNUWmCwPIUy7OJVL6lRueJfHJF8zKN0i4WW39xyf4qyIzYWO9b4BgvtxGG0VMacd
	 d5cr9qzAD5aSGAcROyKqyT5dO6UTkNOHDAeHXKTQC6dpZPAonQzkfB05z3cWtjqpNv
	 dPx8yukgmlLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04B9C77B72
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 03:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168161730576.11310.7060702308907030455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6348faaa7f5449e1bc966fa477d938a644fff9c9fed8bef6bdf6ac17cb680ec
Date: Sun, 16 Apr 2023 03:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681617305
