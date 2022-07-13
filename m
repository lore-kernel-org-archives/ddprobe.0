Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F19C46B3
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657730812;
	h=To:Subject:From:Message-Id:Date;
	bh=Nd66GT7Mwhr0XKzutYLaYiAsgxSfc3ZN/S+1o09iIi0=;
	b=McGJ5e1GyPuSZXglLm2+yqpnSQCpX4q7ThblBYkgW4YRmXCRITIxrX7BhsWys+aP
	ulYhJwf3bPq2OZEt/5WYvUxN9LHQuInTVFYeLk+zJbJyds9Fm4WSt91GpSu/4m1zkzA
	9oqRNITcJRbaCLqLXv4H+AWDVIfBiEoBSYO6zap4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657730812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nd66GT7Mwhr0XKzutYLaYiAsgxSfc3ZN/S+1o09iIi0=;
	b=Y3iTO/+Bjt0s58OClydmqeSUB/C7YvCCqQMnQQYUfJyO8mk0PSkwLOpP3VgbFhqc
	W9Pfav+eywEKAwRT4P17VKaIqgbbGZHLPQ9O0clkMFfxHmxS3ajM0r5Ct4eQy2aNp0h
	aCNGlvcKrxcb7WWgzv7Juc00wbNrVx3ATO01hqfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f874c98a-f065091c-94e1-477c-8bb6-b1958b74cc07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb9f29e0065dfc62838303664693cfc5235411a86f7c3c906e19a6cb19243019
Date: Wed, 13 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657730812
