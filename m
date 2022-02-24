Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7851C1386
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645689685;
	h=To:Subject:From:Message-Id:Date;
	bh=KRH/d+na1Cu9NTZFSJuD0mBfBx9DD9Anl44XqDskvKM=;
	b=YwVoM+1uU1GiEx3usO9hxcA4vCT0yGhDgmpwKwZC6tXeZUSmEarTtq1w1otf5quP
	s7aKbcjFMeLLGw82uUXBAFgsB5ngoJucZk2CqnpJV3zUYvunuUBe/0fZWnHhz4Y4ZN0
	mIIYrgK0OC6JKmp+OznU9wlxg8p/jE0aLftvDcWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645689685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KRH/d+na1Cu9NTZFSJuD0mBfBx9DD9Anl44XqDskvKM=;
	b=kyjIZZvZVQIkZiw5Hf359uwyjnC4HibgZ17BMd9X9hsYtrBQG/K60Zv49S80tkpG
	tvgUhHgH/vGcK3f4wEr/q8z15KZyAOpb0UI6nEYVGMEL01FBGwRgZp+LFWTynNnVLAY
	7uSnvTDsZ0bF8L2hQ2a6KChTmafy9eyPcfdfmFro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2abfc330-eccffad0-a54e-40f1-9e36-77664d9cf4db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 822902041df10c36c216a26484fcdabe850c8347903356a4666a201204e77a9f
Date: Thu, 24 Feb 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645689684
