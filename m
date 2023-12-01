Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D131CAB9
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puyN9bTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D62C433C9
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701425896;
	bh=Z24Yc856ay/3E7Uw3pC6lyri1yOvb+1D7dYsVFE+vlQ=;
	h=To:Subject:From:Date:From;
	b=puyN9bTyhYEVeFiYmIIEmt4JXqv1oI9iiO/oJgQSCpnSeU5kkH4hOf6z7ZcO6jG4w
	 RmSiykIQhmMlyANQ5HgIO0SAubpCSivKcjHOnU+YonKBPL2MDhkqJj64CGGVWaCIAq
	 m34qa9u3ESytxY6IH+CnFPyEa6fbk3+Q+yRq0zhso1x2C1cj41OGNDSBhJ1TUCad2G
	 mlayq+JAvjJArmzwH1lRvJccr/LX3SOqgnZjGvTBUKcpvPqvMf6anaUdxDg38zq8CM
	 IkMARJN25464HAi1Lc4aPKVJbFlvCumyIxe+YUfckyNaRgVKqpNVxaqpr2Rw9aiiC5
	 dAVVht9GFZPlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685E3C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170142589641.29915.18080171579771140341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6c0d728f6b10a41fb2328c92612d667376130f0a9d4a8bc05c19e850aa7747
Date: Fri, 01 Dec 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701425896
