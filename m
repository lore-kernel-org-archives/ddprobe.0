Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98331366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647234985;
	h=To:Subject:From:Message-Id:Date;
	bh=xpK6BCNqvWF0oka6/YxpCvZ9jGqsv8qZn6lRFhby/po=;
	b=iYNoBLGfqMgkNvBvU8JCzUSt/ncH6UioVOcDjGjHc2Y3LtkU61xko/O3aIANtd/q
	zx70bAiXRClSr9IlPaUmUViLi2x6f6xGXG4mchLWONPm6DwLlGlMFuzvZ9JoqI1kyy0
	+4iyvuFiwzNl1V+2VH2fnr8eksIBo65uN0wlVWLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647234985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xpK6BCNqvWF0oka6/YxpCvZ9jGqsv8qZn6lRFhby/po=;
	b=hpezk5F+M/LrT64mdrkG9uGjtbFEhIPGpOKv4qXeAaosG4O9Op/T/XkdCT/1oAPW
	JGaYZfr32LMO2hyIi2Kc57zGfq7ViyFUhv7gJzmzPC5Dqx9FI2mkI+FaJRRXcFlu62p
	uwMEdppNBZdU+Oj3KT/6Txl4HZcwTiJkGqKMBurA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86db2bc8-33158082-ea5b-4e37-918b-bcfb50c7e21c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f4bb7d96271494425494957e6676d5940fcd6f4df7ca1a2dac5c6bcd1d48e6e
Date: Mon, 14 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647234984
