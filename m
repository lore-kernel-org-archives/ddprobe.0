Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442E57A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657880212;
	h=To:Subject:From:Message-Id:Date;
	bh=tQ5Wiy48EFRuBreQacUq7ZSp9X5rKwokjYzhCtqD70Y=;
	b=XUwdsOYMbczwsEcg7884E2ePE6QHw7ZIFaPZ/9gIE4jTBpTIueSQ74LYHzUktQQ4
	t6ZxJkKNsGjE5OFStdekCN37CVWjV9oIGfixuSLCDev/KmuGHutD0m9KgIhNgAdPsrY
	VVOh/4WIYKe9Zxf7W12g+2xq3Zd8fmrwPK8t7md8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657880212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tQ5Wiy48EFRuBreQacUq7ZSp9X5rKwokjYzhCtqD70Y=;
	b=VqHE12CGfGKbsuhx5IldRHnMtV0u8MViT8pLbuTq4uW8Ruu9o+zwnZM3WqN71EsF
	FWh703ihOeGBhWcp/3ESY7wOIrB62bnl69oCNoHHTHVo9oVb2Miy3looZ/ysY0EvNQ2
	RyE4TdXIrYXQRL5f0w4E712AXIdNKefSJfAYhZ2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182015c734a-f7d798fb-dca5-4302-aa5b-de8ea847c40b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03b607a199acedb52a4de12b2635d25019033b2dbbfbdbc22d33132727baecf5
Date: Fri, 15 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657880212
