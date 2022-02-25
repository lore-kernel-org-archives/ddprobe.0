Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDD823DE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 18:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645812684;
	h=To:Subject:From:Message-Id:Date;
	bh=RDrbxD1HRdE1uvhSiRKADu9dzHH8KjSAuZWld6K8zmM=;
	b=kh+JI/GTX3zri9nzjkqdBK4N6p9u9bUijkmT03Xt74yw1KDqBRhDmN0lQ4+qQK7Y
	0bxORqmOZwdRwC60yzuyLB/Z/LvuM8cYM06PrG6XQ8uyRAaL6PmpKoLlDas/HDpVDvF
	RWI6cfwDN90mvCftauKVvuzVuFmoYkVBTI2tWVoY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645812684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RDrbxD1HRdE1uvhSiRKADu9dzHH8KjSAuZWld6K8zmM=;
	b=VVUAavKo8f8aTEE+W1d3d8Vl3yjmirlbFyrZWdptvQXbSk7qP4f5r8Vp6qxGMOOu
	cGiqGSqvRGmG/GtCr4N7P/rdZb5xa16qsMLPC1kCp94Gv4goxiFnOJget5Rk16mizdI
	ztJAWCWS9w6yuXXNI3ADGmfWRstA9JqN9dQ0xhjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f321497c8-462d338f-c4fe-4bf3-a11d-724da315cf5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6b7fddec821cde29feb9c32d91ab07121edbcdfd48cc22c7dc199c81cf40177
Date: Fri, 25 Feb 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645812684
