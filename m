Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D461C2B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 715F3C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669971654;
	bh=77BGXNLMSPxboCgaf1Xw48C1ByLoZth4VbxB+BCALME=;
	h=To:Subject:From:Date:From;
	b=gdl1fEtXGZAHrLYhoYOA19hy7ArEczGFIProdSEjfeV/76b2CvFzBSexOTkoo+15j
	 L3dMClOxwfbt2CEq7YuCkjX3RJ25LUNTAk2xTn+STmXfg0mlxfkj0BnEzScJI7VA/N
	 X/Zw19yugXg5BmHEPMcJJXsLQdC4H5SGldvmPO9nFGkEC1ge0EKA7iOoctECvTWXWz
	 4WzUkhMjVT/+UUHSxaGzCdkPaPxcr/6krk18PSwx3OlQZRs1xwidtsd4Iafnp+Y6ib
	 NlQn8TocKJNkgCHS123IPxDbXA5TY9NNctiOMxrd0BKW0KJzHgdNXVDGKMFj77a0Nb
	 PArjD/6vQO4rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B6DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997165434.31702.13221613052037945984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0a502801cdd7fb286772a6d71f38890cd898c4e97c7078b40b040035172d28
Date: Fri, 02 Dec 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669971654
