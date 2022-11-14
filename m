Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47C5847C
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D0C7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668457254;
	bh=xxZhdGRE1wIymzdilJR3QAE4P/4AdQ+GXhqEvhqt51E=;
	h=To:Subject:From:Date:From;
	b=oqr4ercPValodZajPYcygYEXLpNLqPDMpmzp91Nd6q4XSBqPb0NQVwTjjdxixbv9G
	 i6dn71g8eefL6cpoAgd+RBPGdJgnnZ/LqC2YM+JwgKpp9nnhXZHPYa50kCpS+JaTlG
	 YaKC20Hk1gV+1df1k4hjMoTgbVqqbxnM0bL3q2OeCZ/uDqI8lChRpELU+mlFst0u06
	 hbjMm7UMS95JLCRYeM61yDGvys9QQZLSU3oS/2csoY+41GKU6A5cirV+/L+ICK0T1B
	 hdMxE+Hsyox7PQe2H39KyhQQFMs+J4ASgo3keNcfAQQGEXRE8Gq3uTHvYaBM7dYz4Q
	 tD5Slzty67KMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57566C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166845725435.17985.14820406465609647541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214a033cddfcdde962e0e02d34f11b8a5e5f9c4eef2810b94bbb8ff9bdf30716
Date: Mon, 14 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668457254
