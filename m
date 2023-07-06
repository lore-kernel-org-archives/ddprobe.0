Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D3C7E6
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC630C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688602628;
	bh=BCDcqLyDQAWcRk9pWZS3ugTsmp8pS2CdK7OHq9mTD+Y=;
	h=To:Subject:From:Date:From;
	b=K8RcRiptaQwPkGBK8PkSWexjOZJN8MvCRcP5gmdOHE6T+HWmVrOp/GyKqPz5VTLpC
	 PDg1U7nskVKF3aAnYPrcLQ9+6z5OE8fFZkDM61g6QpitB9ym3obBQrOYb5dTCbUWJY
	 K8gsBJBNW3pNpIz5zCzORLGf4A5Wv6Iy5lJaqXbdTmVqVPkyBk8VsX0BCD7NMmEEpk
	 B3b5kMxWLZ3d+45j4/pJb5go+g0j5XGynSJHDyZLyy8udC4Fn7UvEUFxGDvNEXvdkf
	 T2BDlcS1jTjLMg9hz8Y+xtRl9fylpdkHnyLEj6rn74oG5n+sJTPMVvSgGVMNNYYO0z
	 YrCw47WfvmX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C49EB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860262871.370.7466220577887623104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204076956bd73854cb3c2b00ba228180b8efec6dd3009fe8eceb3e114f0af722
Date: Thu, 06 Jul 2023 00:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688602628
