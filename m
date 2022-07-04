Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE7246A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 13:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656942412;
	h=To:Subject:From:Message-Id:Date;
	bh=HgH8pLZcwMGCHT4wEcEzo/dc077cVvDJPrxERoqH+ws=;
	b=fqaeEJmOFFSjiJLHNLz9hJlgJaDWvdHGpljX2FUABCo8RerdK2L9KF1amQDxiJ2k
	kI9pPa/ijoi7KiePsPAkjZF4ikjx5wVuu9ozfXJBrbBYjelDZNykBiFVA0driOGrvA0
	c164jeiR91pEhnnCdFU+vAiI5TgoSDvGKVo2nxmo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656942412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HgH8pLZcwMGCHT4wEcEzo/dc077cVvDJPrxERoqH+ws=;
	b=D1VjKClwd26OL6U6scv2mP0kCjPVqJ/9HLGUwztpFObbo+mnIOdBQZG+PbY+YQvB
	vCCdDFUy4j09P0cY83BXl3JP2QzBVQCMJ4JVhXcEym3WrVI8qsPGKoEt1XuhtiFfWZV
	noXeFJeUNC3RvHF7XYScfBxo/Yd97aedYSCXMtoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c976c1f0-2bf0b888-a84d-4f42-8f3a-7ae9bdab158a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c40eb77b7428cf90f2a5b48f6c318d0148a340305638b333dda48c5c365b3c7
Date: Mon, 4 Jul 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656942412
