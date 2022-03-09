Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598B87A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646805684;
	h=To:Subject:From:Message-Id:Date;
	bh=ULYLwLAMdR3CvYqxPm2vvcWY/sW7mcbeDrF1Y10T43M=;
	b=bkK2k990NQGlXhX49c4KNQle4WBEL2lhx6HU3LjxhSlxH7t8G1uRDAJUP+HrEk1U
	DH7OCClGSFUk46GU1CZSZET6Huk3kt0WZGWkBcral3hnzOzTdeA+3235t2+TPKAuSZm
	ez5iLFaQwGC/wehEhvyn48MOI6fJyZUuYwxV35g4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646805684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ULYLwLAMdR3CvYqxPm2vvcWY/sW7mcbeDrF1Y10T43M=;
	b=FmzKudAz8nIrzgMWIxFIqZ0/5GVbaNUDAQSQlFIo1B1dA3B1oHn045PlLmJlExXB
	H2TDREs2XjIunzxk1IJkrOkufXFxnoy4L38cqMy6HM49UzDwdTavbNc9TX/WJrTxCZE
	IMzXSKN+zabMCj2sMqzAXpAwbu8dcVxrTz0S1qDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d449217-c00d1731-9f3c-4a83-8a2d-46ab39d9df5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 806af37ea3befb2a786464ae75c40c0896dd753f9b789e1e80823ea197b72fc1
Date: Wed, 9 Mar 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646805684
