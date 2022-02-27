Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD037A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645992085;
	h=To:Subject:From:Message-Id:Date;
	bh=DZCPGW1f6FdpRioBCfJEjpgD4o6BeHgPN0q2NGlp+VM=;
	b=XI4JY+rvZ4EC+UHdc8WxtTWTSTXJYuwrw+6eysZyy3t2rZONU3PC1MrSxHLSLFuH
	EKZ/qenf+Adv8t2nMbvBVH9A1d/Ea1Potg5p7pPCujE/4Pnop8UumlPAVCVMwMymzML
	AIVcTzXOpDvScYhn9SwIBwE24BZPxnS/YpUZrIaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645992085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DZCPGW1f6FdpRioBCfJEjpgD4o6BeHgPN0q2NGlp+VM=;
	b=Wi7H0fEO3uWOGfVX+/HORyRbQ+6QLCbXfku1X9AoC6L0S+0oZo/nEiCYSSkj36Hj
	8aMQee7iB5RrRY0SY2tYD+RYMoleytJdNSI2yOp/D9xMT+uzExUnN2Qr5VKpwTm8PyX
	USprlv5RK2mf4Y56fEUrpUhhQTTN1Uca11m5rT2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3cc60525-4bd482f3-f0a0-43c9-a8af-fe4d59bec010-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d40e23359b02c2e78640e30014007d78608081aa261ad8ee490b8133fd22dd9
Date: Sun, 27 Feb 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645992084
