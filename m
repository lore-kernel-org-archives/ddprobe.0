Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F63E620
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658813213;
	h=To:Subject:From:Message-Id:Date;
	bh=gJn3qaAsN0hck3lD73ztnSUV1i/j9oaskOLmZaKmx3Y=;
	b=UZh57J6Wsgm1kw2lU71axc9vYlU616b16cv7NXN7T7a1apWVwYIDmu8ioUQmA/9k
	K5pGGr9RHTgHsdVgRndd8F3N9YpNtbQRxHJfWNGYGwsvcPbzQevssd7nSXt+6Q1/jGP
	pXu8OiwkZZCcoLNUk5Uoa6MV3BgLgz7pI3//iD9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658813213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gJn3qaAsN0hck3lD73ztnSUV1i/j9oaskOLmZaKmx3Y=;
	b=kvZq2upMccC1vYSQ+DEcgqwG6X2lqKptSC42CO69gAScdmORrNSD89iQXHgDfNA2
	GMfi/QCrSJRiNPJPHwz/Y9pLI5nuBS355ssEJpYjRR1m+PyMaN5ExqaVA2ybdcWrCmd
	p+zezhfNivYAWsmBHnZG4mDfzkwQeiabrxydcjO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238f8e707-6bfe53e1-3730-4ff2-b4a2-cc444662e23f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e97385e81e2d39a970d445e4cc53536fcd24107b13bebd99dc80e68602444826
Date: Tue, 26 Jul 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658813212
