Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4964A38
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657814812;
	h=To:Subject:From:Message-Id:Date;
	bh=YnGO9Qd7i2+55j435OMyAQXe18ZQY8OgQlmxL3fmT6E=;
	b=X3NAO/sSOgNJ1uFTtO6Whnawdjrx9ATUMb52cMg3zfh/hjsm3PYAdQ0MpTcxeMg3
	qdmaxnxYDL25IhoD8XCWaxVJeWvEydOes3ZjGNZuT1T10X6CWJOKlN8DVD4fDWHwnmK
	SJ5vIamxo9yBayrVyUwXQTb5JQpCGj3ptU4zximI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657814812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YnGO9Qd7i2+55j435OMyAQXe18ZQY8OgQlmxL3fmT6E=;
	b=YKkSQouiT7K+5FiE1auOD3CK0ng2+6JgNJ55n2tEgZEBCzamX2ArtZIX0cVaRKoB
	qVnes3hmFVinatkuoFQ/4/x9zU4YHVBMlj8XPPfkHJLDSDocaImC/xXf3WbFQVal0Xv
	rX0xYsWU2fy9zWi6QvI17B5TrU1m459lyZnoXP9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd76867e-65427bfe-4f2a-4620-9de3-458276fc11d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55954eb9f72c567b853d871d2317de85673824d3102a85e2e383c7a7f8648373
Date: Thu, 14 Jul 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657814812
