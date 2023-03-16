Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3818218F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 00:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA865C4339B
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 00:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678927805;
	bh=fjkVhUu25zQqpXUmnGO6NirsxWmfSu2agteUsxNEjzE=;
	h=To:Subject:From:Date:From;
	b=pgfRhxf7KOwyv0oicZgnxwg/j8TG1P7cUAFOMXXpeMgDJ+2f/rg4TVyU5J01F2j7A
	 TwzULy16fE/+vp4X7BFJVJ956jAfnQfBtNel+qKR+ztWMzrSNe/GBCgpY74lYUYo0l
	 j9E/8lP2duqyep6QSc/vnE/ULOil5fNn2dd66/p6V3l4lCYgI6sRtXq1czE7vlSTh0
	 7bd4lqDeHvzxcBaBxihXYlDsE59FobX8VPMNhNWvSG8a0oAWkwdjERraNzP/M/eJVU
	 V+ve1kCWw/i56f/tOczJfk/w6FYo17MeQ7Pi5ir+qekcH7K+CK+JJyKDR2Dz1s1X82
	 Nf7sGGRxvKexg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE50AC6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 00:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167892780576.10761.14623505844442370984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753ce885efe7a4ffd894102b4f5090f82f111d1898459159deb955a663ddf6cf
Date: Thu, 16 Mar 2023 00:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678927805
