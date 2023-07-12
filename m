Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F70C1D2E9
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 23:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A3CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 23:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689205148;
	bh=0b3BJzsNtUqx+HtNVTcd8dtvXiUr0Vc2TdyL2U6e3Ho=;
	h=To:Subject:From:Date:From;
	b=YIjwk1YTSx0ipIb58aqePFahlB035unigauPEcsmNTYGh6UQ23b4MvO+rkUbF7YwZ
	 iTeVFka27jgBhC5/OezV+aNu9m1VWq9ly8DXp+ZnG2Y6qUsGuNR/tZp+6dzB5q/XVI
	 vVr1XZ8teXRFtOKbUHmMCTBLnjWLdQxtDXinXg09pHn0O8bMVnIUgwGlLFcZtF9ozU
	 3/bKiK5JRGRJpDTvM9maziuh2+HZSGw76L2eIlDr2OO10byD1BKl6OzqMrNC2I7Hdw
	 wEbb13oT4e28eKrhQaKHYIdlAeDrOnDWhwwO8JAHdVZoJ1rZSP0PI1ntqzWtM3r77z
	 uLR3JPqdbDVhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3303C0015E
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 23:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168920514866.25906.2233527284276069010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d4cdc22e7546ef595eab64df7bc0b42e5ea8d828a4b92a1159c9a8e8cf0dc3
Date: Wed, 12 Jul 2023 23:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689205148
