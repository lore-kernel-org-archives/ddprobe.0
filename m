Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD5510EB
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 05:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B39C433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 05:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684904705;
	bh=rFzcM1hlGDdzPxzlmftBdJEgZis6Pw/7mCwghzUKC3E=;
	h=To:Subject:From:Date:From;
	b=BSZ4KhEVg6Urcv4BvvtictvU8CbASlAh+FHE70h0+sx5DqEmwJcnX4uBwUEjUO44s
	 cFFhQuCJ7B3rpbfoDQeyHt6B4bvmho5oeJhiJ+lr+BopmhxQFP+vMKs8rtXcEOPlGF
	 XQbJGbcwgw5jB5A1EhcyJhN6icAk/1c1QL9ohOcG5dqdtZ6mR0rJ7TfrgOqbYO+++f
	 wr6IpPDUxNNare0Yi92mqbmThrrx/1S6rbwOMlqghj2pPFanoUIeSqmqcXS3Y2SoPL
	 kHJsWqCE8ZkHGtpMgjqo5Te7zxyMaOFPudEut/3KJZ/vbRXcGmZUSs+njGVYZlc4Z7
	 4MFgPOboSeDPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AADC7EE23
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 05:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168490470573.11658.5427714534521472450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfbf3cda2a38ccb0a5b90a797552a11e962b2e0dcebc0c1589fd1844d3d91e1a
Date: Wed, 24 May 2023 05:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684904705
