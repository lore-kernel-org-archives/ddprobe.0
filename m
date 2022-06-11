Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EF27F3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 08:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654937519;
	h=To:Subject:From:Message-Id:Date;
	bh=7hbPUtzKCR54wt6sh7WGc93bwRLnB5HqNHVSbDZP1uQ=;
	b=WlNyOb2loyPp2sP3ChIYTLa7RBPJOJSzuElEU1aCQEKgQXfQavU67Q6/yRRfa+oV
	6U3MnQ4zQQrzZxGrG8UJ7Suy3XcjcZp3oWeTeQXpHroAmrNu0q+aIS0I2U0CSTqhyBy
	LmZXCdmXT0SYB0/AaxkJ7P/p5BqaRTle3NwsNW3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654937519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7hbPUtzKCR54wt6sh7WGc93bwRLnB5HqNHVSbDZP1uQ=;
	b=jraop8c1wx5Anj2zy9o9iG08XirEd8FfsnCk/JJYiuynkwW8mk2bMgTrq7YcRKJo
	yTGHYfKODpVJMT2WiVPjZqSM0swdgUr5go7UY0t5Gqap/D3urDrDw1Eh8YV1zOx0XLX
	gfM3PeA60ILDfLYfwtyCVS5SH1CqcZYRw37LwEVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018151f68478-aa8b3309-d306-4c26-8be1-a8a6f55bf1f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a56b2d2c01c96be55172fb8d61b9917832fdc4267336b4d2f784a01038df5c1
Date: Sat, 11 Jun 2022 08:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654937519
