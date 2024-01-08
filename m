Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257D8B647
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkefqTcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93FD7C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704699496;
	bh=gOwNc8q5Dj13HKDWZjB6Z6JCvbIv6W/rrZ5GJNASdyw=;
	h=To:Subject:From:Date:From;
	b=EkefqTczmiSiKQgllbraG9l0nj8x+al3cYx+tz2miTMvHRGm8X98Yna4QYnfVrZJ0
	 PXHfMF6pwIt9g9teVNsCFtCXzPgkJTg4lPznJwZLB6SMAfJd3jDD9aRuSCuxgsmB2p
	 oXZQARmN7ht3/G+pYQQuGWmSHSTsNxC5PjSOh4zxj7CEtQKK3dkj/py534E2B2lwoK
	 nD2H6yCBMhnL5KGj2vsKdbnZW7mSuWu/x1Ihg0rGcK7282CM6fGP8CDF8ho5TXAyLG
	 r1+0fa3Sr8+D9SPu88QPdX8VGMcQzT2ppRcZLr2KydlpRj2EAnV+r+Urr/kXW8avrf
	 QGT0cMOuoQvOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75650C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170469949644.2498.16516044873133098341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d21a23dc358b8573f3c4f78beb4eb6705115b466a265820b500671defe2385
Date: Mon, 08 Jan 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704699496
