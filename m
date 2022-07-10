Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341B67B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657466212;
	h=To:Subject:From:Message-Id:Date;
	bh=rAgtVJKZgp9TxdLfjRR8U9lR6eeVj470MWBx10eaaGs=;
	b=ULMptwaqtwpdZBQ4lfGdxlaVL7ca4TUeTV4/58BxPjAhSwl0ilsYHO6f/CU+tJ4L
	a5KJUVvalv6Ejs78w+8jLZpkIybQEiMlR28urFgL7ztNDU3mIdJm/RFnN5PS7fcLwcE
	1GyVWPSCQcYnNEw4777GsCeC09yqY0FvaaKBJUpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657466212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rAgtVJKZgp9TxdLfjRR8U9lR6eeVj470MWBx10eaaGs=;
	b=GNL7aVlCorA1Vtcg7tlGfsK8Tsx26lx8nIz2EMv6pkTfpn/EUHk8/uOKPkm2a74+
	g80mHPTaEAdgmjh7qphgk+N2e2Hg15skchVZ2Mj1nrzeX8DxO0B/0rFFjjgPzzwCgBK
	HSV/T4XxTXAKRIU15C1ZQv6CoH2w6JJmBN8jUwjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8af4ffc-c0c53d58-7e52-42ae-992c-84e08d6dcd40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df0630f78c19645076db4c9fd72edd9f299e65227af5fdca1f2f148929637280
Date: Sun, 10 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657466212
