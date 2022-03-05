Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B2F1B76
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646491884;
	h=To:Subject:From:Message-Id:Date;
	bh=jJOkHMQ2QsqhlDYH1HwEmhKVZjH8ul7PEW/zkhYd1Lw=;
	b=UO5m+Q771NhbDRTy9I55N0WWIb+XEPykdO5fcOb4AfCDDdyJFoO+p2w61RVekRn7
	r0CjJZz97euRkDXrGRzb0Vxpgkny/y58XB5BTFeS3ZA9bkAC2Iz7hBPdcmHzsMNyQ9f
	RcgMWc5i2RVERmUXYPkzRogiW797mQ/KVSF/EJUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646491884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jJOkHMQ2QsqhlDYH1HwEmhKVZjH8ul7PEW/zkhYd1Lw=;
	b=djVXuBFEg+Qi3xvFNqHYsDt2yTHtPas8HqOlLe7HlTWsTJqpAmHuXOa4fDSqaP4W
	zKjtjJcYdhuDqCvkARIl9FpZOJzfsw+LEDQNIiDnZ88kCsHAmxBp7MHHaPf5MbsaPSj
	6X5EJCTkSMbrjVeKpKe3LSRYfeuFbfhb7h3S6GDA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a905cbc-a590f6ac-9ee1-4c31-a1c5-fa531add6870-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55c9c8f26e34777ca17526569f9ae8eaf7f31b8b2f431e4590582214051c4cfa
Date: Sat, 5 Mar 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646491884
