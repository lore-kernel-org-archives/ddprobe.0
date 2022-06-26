Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF4C2F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656259012;
	h=To:Subject:From:Message-Id:Date;
	bh=mCy29RDG+eVo7ELjbBqOdEXd6sL2r+nBQy2XuSPKsXs=;
	b=ZhRGtvZtSZxLnFTXqYWL9whTNEDoCmE2G4Ubb0tXpNMLQmkYM0T5GLUYIicH4jG1
	tan+eydJesqJHbDkdFOcwwrCgJxKIWl+kxOkbGjGv0MubnVlmt+CrCGu/m7UaM9jkvg
	qr4r3+pAIzMh6wTdxzNstLFJFuiaaS1dYhAaPeno=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656259012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mCy29RDG+eVo7ELjbBqOdEXd6sL2r+nBQy2XuSPKsXs=;
	b=b9MlP0906JoqIfGOkIFpR+f4xj9j1Zfcvm2WD/zKXXuq6C1EgBkdZp8bedoBcL5K
	q2mqkDXq/RBZYF1sAmNyIrbBRFKdcDl+FkV3+XbWn6EpwOIFxQCC3Yyow9nDnUKasii
	BOkD97OM9uSrqyCaoiuLlVCTTCFuQ6bgZmS4Eas4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0bae6f5-92872f7c-3f81-4d7f-849e-b96b6743dad9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 173b57231eaecdd242e78898015c74cf334f1b98627b647d0436d026d44cc7ed
Date: Sun, 26 Jun 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656259012
