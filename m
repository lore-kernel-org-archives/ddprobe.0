Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786C4366
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660304452;
	h=To:Subject:From:Message-Id:Date;
	bh=B7MxViHxuUnnqe3noFO9yYaufLehpm2ElJI5+nt7tic=;
	b=Vqp6pA6u5fE0YJCpzlM1ueAufgUYlau8mg9EL53RjnDjENKZ/p0LOSMP04i8J5hy
	Aby5MakjgGYZL+wASjNWSxyApLqysaNRDyuq/Coulf+hw8oBLcKH6Pdh73TFVY74Sy5
	WOl2rzGSlo2/vfEX14Suk+DODuHZ+pjWntBH2jEo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660304452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B7MxViHxuUnnqe3noFO9yYaufLehpm2ElJI5+nt7tic=;
	b=Lj02K7iBerLj+DKuw5L7U7T3Qa/ya2VI1K5llTtTCetM+grnkBRPxMRK21QuR/mj
	BT46214AsLz8Ewacz/TeAJB8f6ODzgJhqq0IIoKinrAhSL7wHuYCtUcIfglmtk8lVMP
	yV5ZgsI1HiwWkq4+Bn1nILS9dyUHJ/S9CZCTVTNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018291db6bd4-269e262b-adc5-4cc4-9b0f-ebb4edda171a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a445d05eff198bdcec2859baa0f388dca2d8e80520109c90c22556f5cc893e7
Date: Fri, 12 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660304452
