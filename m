Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2837B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 10:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655635799;
	h=To:Subject:From:Message-Id:Date;
	bh=C488B47Jpag/G7MihhUGjs1PG6ahl3ar5feYip2IOGQ=;
	b=iHC4e6GSXWa1rFBiBEmAYu9T943GRduoUKaXaaMAZZC5rJNlwXYZlPnk/kXWKRU8
	Wqict/whjhEWj3SfwxURXcvUAojzVNphmCdcHYWUJfIcr5Jkv8/6ha1AuZi5MS8M8x8
	F8/gfoKkLG/5m0Ssp1VVOuPB5mqLVQlv1xUPVabM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655635799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C488B47Jpag/G7MihhUGjs1PG6ahl3ar5feYip2IOGQ=;
	b=EcUl+C2YsaeVNgkltCxJgXUm5B/eRapsp12HGEGUa8TcyUYAxaKTQD2bBvlq8yXQ
	gtjBpQ8QEVznRcL5yvBqpWDAHtA2OyGq5jCO5Pj2UHYgk1ZQZtU86OkhZaTF/Ki4HkF
	KIZAQ96jawdXyszcatewK6+x4LrYL+FWcxFqm04U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b956cc1-6d8bbbfa-325b-4792-a616-f78b02a26130-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da7d3eea040c0e86294f356cd4591da844f779a2c836db0605622561c74bc26b
Date: Sun, 19 Jun 2022 10:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655635799
