Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E16636B
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658034412;
	h=To:Subject:From:Message-Id:Date;
	bh=YPqeFbnSPeYoZuQ5rvFK1N40dwxthKJmfYr9kHM+rAw=;
	b=EIkzHIHMQhUy+tdhDzxZ4g3dckUvRDFUDP2I8M83yjGfgRJXrfnJw4+zz1y7r0km
	u9oeL1myAYob7VvRyzzFLGTXGByAAjAI03DwPIhaW6xu6fyMBEL24ZE6HJNQ8GZIxnm
	ES+8JfMe5tLFA2QApBGsemvYB4RsZFMTHKLhS4Ko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658034412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YPqeFbnSPeYoZuQ5rvFK1N40dwxthKJmfYr9kHM+rAw=;
	b=G0YclUaHh+nj4Gv+QpV5K/qjT3ojqBH/tNqv5yCx5eZ+TIXpBGatbq27jHfZ94Wp
	X4vLGnYpPc70orXkJgc3Yj9bLaYW6RcYR3qkcrZ7TbM7zac+/Otlcui6l/bCIDp0o/I
	WwJG3TkSisi7lfcepcP6YU6F4FzzfXvU1AOPVwKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820a8d5b70-13ceb4dc-5244-4561-81df-a664d8acef63-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 750182cb1cdb29c9e5b986134f41ea2239f519961bf473477dda411f9afd0acd
Date: Sun, 17 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658034412
