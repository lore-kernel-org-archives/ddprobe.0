Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BA018C31
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB75C433C9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689095828;
	bh=480PVzkEtwwyOrQQA5DjNQnijoYaPSX426VbjAotYdE=;
	h=To:Subject:From:Date:From;
	b=fdb6YPvfr1D6/3Ds12HFq9jthF6A4eerg9eBcfedTFh/Mjgw3ulc4MV3ssjL3RNKM
	 EEOrqXBhxyA7k5aoIr32uRwQATS4BQkP7Cn5v3zwdZGgWn03DQYlH2LfgboN6557qj
	 mimBK2e/pWxBIvGruu4+R+cpn6uFLME44+4bmNFNzXKZ3rjilfzpwjDX5tP0kF3Iy0
	 XyFwuMwLeJT2h0m892F6IJnmMZxhoVo36suMv1/L+iNMzMSgsQVISZQDEwobhg9Sm5
	 I0dYCr3KcGPdP/hQ3SvsidtOFw3N4s6DvVRfR6471i08IOtczjHShnNND9CE9uf1OY
	 5+R6CIV/ohwvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5A2EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 17:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168909582872.13874.16327514720397482353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813e43c0e9a6ce5546baad2df7a444295b7d5ce8900b8104fbf301e4ebb62e08
Date: Tue, 11 Jul 2023 17:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689095828
