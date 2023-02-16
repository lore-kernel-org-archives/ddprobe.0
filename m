Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA1717E3
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 05:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE0D0C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 05:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676525946;
	bh=vc7kD2xUtJ+rXJiR5iP81rMbbszgsLjX5gEKV8KDSK0=;
	h=To:Subject:From:Date:From;
	b=ecltbTyqqcmEYpqsGQHNR+0mTscjhEGBvu1v3UOGbtCOZUqMzmwfLVkfBRwHUijFG
	 VkqczC+o1uhTwXVoqAwO5zCFWKliT9svA7uvHel+mQvE1uM0EAq/pP+GuWXoYr31L0
	 IIjYFYiKSZXH4lhsdWoxzM8op6Khr8URAUKi3pIJ7VjfGrsJNHwkPWhObsZ1KG+vVD
	 W2l2KfqOwrC2sTjly5bqbygvILfCXGy0cwVTMwWMDU0asu5TYgE3S3OnQ9b124OCF2
	 qg430AUFGyRFYXiXF836ZQqM1PFpSc9fxNm6h4/xNHQKe9MgaByajb3jYiKsT5Molu
	 yGdcmcy+l0sZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B11C636CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Feb 2023 05:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167652594579.12475.13734151745664138180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f16902053fa7a15fd040ad978cb0ccd5c1ddd91d67d9297ab337ba97553eb815
Date: Thu, 16 Feb 2023 05:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676525945
