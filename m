Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D14E15A3
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646797884;
	h=To:Subject:From:Message-Id:Date;
	bh=HPfhaLgbwToAZm2QR3ijkDW50oGmnc8MzkQyqIAMEEI=;
	b=LySaeBgXZtiDsipBAqxGpqNsoBqiP9bn3LwCiLm0wnc0c9ypIosQ+bVl0XErtEYl
	X+ZuB30fkDJHSjURGgAgDwolIn1Hkq4FPJu4aTI7YHiZp3LkA15tQu8kP1JifxdoIKc
	CYHgjpN1g+aIk9uvQGwuXrdam3N9zAgH/4DZmzrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646797884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HPfhaLgbwToAZm2QR3ijkDW50oGmnc8MzkQyqIAMEEI=;
	b=QVoNHxEgFELi3nHRcsSPdl8JBQBWehj5xWzeNuJD6p1Rz01J2aVOJGiW2d6gy5Fy
	qN15QmH/atLQ9P6I2KWG1L1BVGlaRrvTCEauU96eFRglccLvJJd5VsP2C6oQp1rgNIZ
	y9bCOo39qGSTZHzumc24XyR2ClX6M3leYQDQt0Nw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ccd8d3f-0d2f91de-47df-49d9-8c08-a4dbad2a2483-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffbba4270774ff6d1978fa07f467fed79f82e8ba4a0a10d8cd58f87ce02720e4
Date: Wed, 9 Mar 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646797884
