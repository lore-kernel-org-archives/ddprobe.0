Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A91E7A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659073852;
	h=To:Subject:From:Message-Id:Date;
	bh=m2tsuN+xYoQObEk/+pC3LlV4FprRUSGO78V/ICQSb+k=;
	b=d3F0pi1RODDwDBVbPwXscPSi9bVWXsbj0/4y2Mmm18u1CbUF8QJQpMlIH41oqlts
	xFG1Jw69s07+hg5OyNuE9Od42Lp8IZQRVBH5vuo01/EM73/xVLsprr07iPUD1skFXnp
	eoBJfvQ8tr4srbFd7+hg7yj82M20J3NVCwJNFm0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659073852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m2tsuN+xYoQObEk/+pC3LlV4FprRUSGO78V/ICQSb+k=;
	b=C9vTn4I2oxDN0l6F2SamqGUn1GafIq8z03aUqMUqmq9Hv/D/+w/QRv2oCRMpBAi2
	cNxPl+2rNfLIxYcrNd+CvANQk7YwsMBpICB0mv46na6SMejwQX1DRriEFdy+3/nWsMi
	9cPmKoie0dlqFGw1iEIEvTGxH/3DYmUK0x5pmCxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824881f470-40a44824-6401-4c03-a3ba-0a84c8ce149f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef91f6031aa66ad44d518aa0186c06ec8af7f571e76fa523829118c29ea48fd7
Date: Fri, 29 Jul 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659073852
