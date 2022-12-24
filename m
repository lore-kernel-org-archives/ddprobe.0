Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4AB210A
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92B13C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671873687;
	bh=qMAjCm73ON9hRVefy0x+PbzA8qJJaB54+qSYNgTt6f0=;
	h=To:Subject:From:Date:From;
	b=spxM2FDTokQJiQKEngKDdssJlmlsP8UOztt+JJ9m6iQpeirGOQOGZsV5aNVXf3TbA
	 8QcV/aOfKkYsvmb7yGPubZKxhBLGYuRoh0C7Rx0iih3dReAKuVz1iSgkBoI+MIPbbq
	 u22ShPoSIlblkDBj55EvhMm5p7YQPSQEk0OYaITotAFxFubepKFH1cKJG66FE4G8zu
	 na+tEaXHYWv2IUPDevtrb1qTNtUmgj7wfq6zF+PI2ntrI+RUpdWEXTxMfe0CwU0UVt
	 9ds6R2pzyVzrNpHaasvehhySnm0GQHHPUPArps8ggNoKXdh0VjmIjld3MCXSA1Lgyr
	 nzaINJEWGRI6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7616DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187368744.16554.4555434503345347897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6acde327ccb56ebd2ad2989eee4fcce2588e8d978de8951d73f97e33a8b2c9
Date: Sat, 24 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671873687
