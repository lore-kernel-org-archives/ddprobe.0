Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8325F2563
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 17:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657213613;
	h=To:Subject:From:Message-Id:Date;
	bh=tX9ATKDvyTyUDeJAeWwJK87QuVngd07lm+pLZca/Ch0=;
	b=fYIGFpOEY9URYWtU2YFAOflFsRBQGoxxUISa8a4ocZSePmM6CdloIhUcsf3wFK37
	jNpavg31tF7uT5SRhD6liswnmaOeYGCsnp0wrI+KuHrm0mTCakzxrRRBFRTlAsrFJ4D
	VfZTx65z+hs0H61xMcHz6fupEK+XV+lMqJWPtAD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657213613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tX9ATKDvyTyUDeJAeWwJK87QuVngd07lm+pLZca/Ch0=;
	b=R9z5zd4iH7kZwfb8TtUuQ8gaX/w1Pcp1Wm6VIb4alZCf9ivhg/0EfelLC79d3c2E
	tfRpXrGXL5zabGSdP7x4p4QJw4W0TO9TSLBeSfs6ur9lZFqp+yVh+9ZjTFvGRHeQzFr
	covN7POd99KXu4WA3YYaZo5yn3P1JXY/J7NYLOwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9a0f106-4bf4cfe7-e976-4917-947f-c730495c46e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 215a276b5f74adb8061199db2abe08d10c23c5c807ef1da4c8018077ef81f07c
Date: Thu, 7 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657213612
