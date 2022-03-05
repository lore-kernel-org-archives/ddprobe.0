Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A64136C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646457085;
	h=To:Subject:From:Message-Id:Date;
	bh=JJhoRxWAetXm+gJyEgFCvuZpUnQ86Ipsak94zT7wf00=;
	b=CtTJMrd5ZmagJHvOrmwDoKkRLZ9rUeTvI/kC+3pT910yxNLcMYS9diPapgs7k5sd
	9jezl7l8WFZ8k4F2+qZ4UvrNcGc49p25XcMFCPGGu6bKd21sxjUdIrX1SvTpfTJ86hC
	g8/igJwJ5Yjg1+Qj/tcsDLdpJ9Tr731L2/cntiks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646457085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JJhoRxWAetXm+gJyEgFCvuZpUnQ86Ipsak94zT7wf00=;
	b=hl4FNBfK8gr54IuiQZcRSoXTcb4TJ4Xerern63mHSOcNKchUB4z8vInt/02/U857
	lqWMspVHlWug5G6mhh23Rk+vqYY0wiL8VKo9wZA2sZjH3d8UY7Hric9LpX6f5NschA6
	nY0dz2jIpzztyqpqT6sdzZjl12ApYvK0qcxqbj00=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f587d5b47-ea261cd5-98cc-4596-ad6e-6d3e770a0dd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90bf479531b74befe7f192794d4bcf2a78651d88f9234702eeeba9687614858f
Date: Sat, 5 Mar 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646457084
