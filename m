Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D93D71875
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 18:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655922899;
	h=To:Subject:From:Message-Id:Date;
	bh=72DbRrsCfDzEqWMQ05ZgDeZCRkBu5FGgvbzUbZJerV8=;
	b=H281Sf/hVmYD8MJa00JSCnGfeTMYELO58/36tlv2d+S8q2b4rzYP34qeu99MhBMe
	HtDSR3bF3L3BqEBsiHTeaoJ2QlaBWPbGTwMmb9yrZ8YeBlH62KBr19grlnbQ3U37nQu
	i7IBePTd0ZRT3a6sBiOgXg1LKEnWJmh/xSa7nDbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655922899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=72DbRrsCfDzEqWMQ05ZgDeZCRkBu5FGgvbzUbZJerV8=;
	b=JCXJjEr1JpB5RvJWOmZbwxC6C+KWI5irT5iWIZ6rUpD3fqqPPXxelU8fxGV3472M
	XA1gDNUQMNXu3ZhUmIoawcCchdloO1lzkoLroXto8aBDPxdW5GOoFCQYriEvmFUqj7E
	NzAcKZwUdJvL+uStcHYF3FoelVmtTpvUjtr/3RI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818cb23927-2357dd18-61ca-48b6-b91a-3f071c5f4410-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 669e24c0dab6bd4f05e4b9643de08747df1faf71a84c899f6d4c2354c7b6849a
Date: Wed, 22 Jun 2022 18:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655922899
