Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233D0625
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657188412;
	h=To:Subject:From:Message-Id:Date;
	bh=gytr5xJ8qoAi4EXxxWNUUmzw3hxjtn25cQe/Zmqf1Os=;
	b=K6jUMaJSLalSPg/YIPQYd/DTQ+c6Nug9B4Li6XdexCWOCPQM5e92WuAt84oXCFz0
	vr4Lep4J77eb6w7yxnzU2tiPbKokWrC9jJYDcqIt+gngwLpxlhAa3id9ZmubpKDAeeP
	LxFjV2RiiiDc3cfguxs1PgjgelL2aCH4CpE5lci0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657188412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gytr5xJ8qoAi4EXxxWNUUmzw3hxjtn25cQe/Zmqf1Os=;
	b=Cr7H/tY0n5Ush2c+X/Uq+QFTPiLAmN9wgdT2FYMbHTKx6GtdPjQpNyqniLwjC1RJ
	0fhCo4y8/kc1yjC95e4w42Kvr/TvD6fX/njcabhvaSzyUIzzx265plsdg3P0zT9Nr8K
	TuxzBV4w1ZLCWD3vLMfNQ39a6TYln5VLzovYl7vI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d8206bc4-4f5c1758-64d9-4335-9275-86d17fcfa279-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 142cf0ce4ba397cfb6eac98371893ece2345d496c5f3b9b5a699179c1e7f2586
Date: Thu, 7 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657188412
