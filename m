Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 936BB1844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644990085;
	h=To:Subject:From:Message-Id:Date;
	bh=FqJa1Uli8M41QEVAk3S4BCtcD7BiVpGap15OtCziWBo=;
	b=Hss8p82L9GbnTdn3oFMFLJ1ijvk4z1ESTwBLWSMLrzsXt+k2TTBetQPRLnwxm8Um
	R6GYbCN08nEQ97x67/LklAqoTgxgAsuOZxV7jBwuTWV+NaDsL9b4BnFiX9PTg+q2L0K
	qVxqK+RAjtGF8ng2dbengGuHmqERKL1CRvnHdavs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644990085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FqJa1Uli8M41QEVAk3S4BCtcD7BiVpGap15OtCziWBo=;
	b=A+AIUz/n3tiEQNGZX4XVVUBoeYICXdiwC6TCcoiF9kT41gESjkNUQmiuQ94xRND3
	rtbQEH8REn+jX1oIz9DMdR+Rjph5MZcg7FhaMtbcTFgHH309ODmnIg+fibweET/YUax
	RWeV5QWQcfWnq40IAzwc5iy3zfPaiOAoLCTW0kA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f010cb685-cdbdaad6-21fa-4b1e-9fd4-aef859e8b390-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7984e91200d062d2f51ebad44f7d3ef525f6ea38bd5e4acf3f2d7ea120f94af7
Date: Wed, 16 Feb 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644990084
