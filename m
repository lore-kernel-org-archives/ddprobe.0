Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DF346A8
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 06:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68D0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 06:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695708308;
	bh=B8oGl/TjkQo0waTuY3kCdkd+reiA2abVyFO/GUMfhkU=;
	h=To:Subject:From:Date:From;
	b=edAi5enDkfg1F9J2QyWRYX5GOufh8dwesWWOFj85p7Pz1sRV9B7wf9Sdg5OHogOOo
	 Pyf1DzAZWKuum1B4C/yssqu+MIE/ZuG94476E2ROyDUMtgXHD4X/pOcGM+pz5l2rnN
	 ozu7IjsEbDqQ/vr5/xgmAb+iV0JnE31jcoxazeP2ANJCV4a14joJnwWDkgld2HipbR
	 WSalomCcSd5+EYz3E2/DErEknhqRqkE0/WYT0g79Hl2t1wxStmR9ciLLSzatHHX33y
	 EPlGpF+Hb/nMljkbrgF3ZRREI9TLMwZyaAG2PNfZnUoq0X2D1bkxIaXnT5vEl2N0st
	 bdJkIntAWRzeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A962AE7D0C5
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 06:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169570830868.10548.266504266709885284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4055a4225756da2b9d9fd1d94cbde2a722883e8f648a5de1bda3a4a3d4048b71
Date: Tue, 26 Sep 2023 06:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695708308
