Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 956B21FD3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645168885;
	h=To:Subject:From:Message-Id:Date;
	bh=j1d+4WDmxQ0803bxEF1oFpN0kPomqPUTjw+DnBFuK5U=;
	b=bj32/xpcAVlk5rhwfzgiIJ8rlFRxY4K0K2yMKNVgBpq3Eg/GBmN2VuzRl0+mOsvW
	0eq1+PmiHLtP0Seq/OaMIHvAgdsiwTcavvjlchwF9h4o4Nqv6Ul6Q4lgybYrv3xXdoX
	D5j/YGpxWbbvBM+HIejjDbnqglEvipaAscS/jKxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645168885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j1d+4WDmxQ0803bxEF1oFpN0kPomqPUTjw+DnBFuK5U=;
	b=OAEXPF7IR3Y37OprgBxWsfW4hLOOMgWcsoYvv2dgimNYxZw9yhMfR54WbVAcShB7
	0rSQQnCwHb2gezOAfUvSdP5fA52kTI7AZ2TOAU0Dpi6AUE7Hc+nwUL1vGTNvVQSBNAK
	heLeUfkzYRY6qEmeakC5Af6NtEi7waydOIIi9bP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0bb4fc4e-0e43e465-f463-4a7d-b4c5-fba037f87ed6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 052b22a1d9d79bb629f05fdd58f2e944ab92e29e4abff1e25ee0db40f39455f6
Date: Fri, 18 Feb 2022 07:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645168884
