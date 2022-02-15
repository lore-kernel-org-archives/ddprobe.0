Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875F1ED0
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644886884;
	h=To:Subject:From:Message-Id:Date;
	bh=Wsc6DPRLAa0t2rPHiwO72b+mT0jBQBhuaYqXuDydMyM=;
	b=kmBh2KKt/1LZWLQCq43gD2zLghSu4PM7rSphzenrn/UqaRRuf3odGInL8k9m5tjd
	i7zcCvI6t//gZptbdX93cUvEUA9owgwOlvWAq+dbEe0+7DIB1pk/0ECmnU50RcLq2O7
	UYhsAkL1cO25UNk01HKd1ZyfaMmL9nKfY5se46Rk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644886884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wsc6DPRLAa0t2rPHiwO72b+mT0jBQBhuaYqXuDydMyM=;
	b=hR2WEr1seIbMwsolxp+7aORFM59CauRzZvJY/eU1Pspl4w+RF9OfXFL2vJP1yEO8
	N4JdmpJZIKjuZP81LM2ldZ5c1Rycb7yvh4rp43PxqEWS0aJJ5UcOOb4t4ts1CZSsUYc
	ORZ/pqefgFkakU2yyVOxmAGQh88u9V4GV5Lbnoow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efae6018e-8c166c7f-9e70-4897-9f04-d7113b9c61fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7d4c88697217d4bdd05e8d2efb872140c3ac0c2179cfa4ab9d1dfd3b08fb93d
Date: Tue, 15 Feb 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644886884
