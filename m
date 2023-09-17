Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D97F173
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 02:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70DEC433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 02:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694918108;
	bh=0sw1o70kX7sf6lAIGmW+cpOwktL2M2KPsylWU6k4WZ4=;
	h=To:Subject:From:Date:From;
	b=srXmfyQgNMOXVBuxZnHQ6cDxlewxMXQHsQnVG9W71+6Xr86K+l88wq1TU+LyHfqEI
	 O/2ugAD1JSb9B56/be0jM0PKUHCDw5tu4jj+KEvRCWnp9q+/oXSsYPC4Cy3mtyc6O3
	 lArh38INi/ZKJlGbkEvqe6S0x/kqXKa9n7tmsB26T5qgMzDGlwIIi45P3PoJPqQGPc
	 LhXrEqAGzPIIWQO/+pEOkc0ZeRlxOoLlskDQAWl11Y0rLB8qVthWfJwix3CzZbjzL4
	 UCMXir3H0sXpe+pPjh0v7VE6R0ana7QiTQq0oJVvZRTtzyvW/L80bEdoL13gdXjsYv
	 dpxxJmnVAWUIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D54C2BA1B
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 02:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169491810866.5420.4882659765283882116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d0b927fb77b693f698268739ce5950f05e6b39df7b5098418ca670dce466cd
Date: Sun, 17 Sep 2023 02:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694918108
