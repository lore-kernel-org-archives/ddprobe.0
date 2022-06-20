Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A905E28E2
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 17:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655746140;
	h=To:Subject:From:Message-Id:Date;
	bh=byg+3pBJuct+30GYKCsIFQumblsQocBjXyyPPM5qSkU=;
	b=H4KucLuVNpRzBZ/5rCF/v5ydZlePbZwHQmREt6syP0OX2NX35FmXRfK2mEO7sAgQ
	750HzEMIqsaoP8SjpeeJNitVdlVJNrQE4Okt8oATx0BNUOCNKQjnUfpnQwQ0DG8q8L2
	6KPQ4WYcH3J0BbmQi0SQH4ZFyBFLK9YV1/N+L9Qs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655746140;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=byg+3pBJuct+30GYKCsIFQumblsQocBjXyyPPM5qSkU=;
	b=a+Lw5X5QBi9Zwz9RRMNE3kXCkidoKxCpaISNPbaOTuUYP4HG3FlMaHnhCvjVaX7i
	qtxgtW6KC2x+CebkQ4vr5KfBX8al99SIRwhf5anIc64Gmqne2CmXzd0dlS68DDIhMUp
	IonqX3gAMnky9M6SetJpP9VAV4/d8f5mE0Oeeji4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181822914b6-8312832f-e2ae-4009-ac34-bd8ad0eba770-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83dd8fb2aa9d79665d7ae05631a0bd235fa533a34cb10856d5bba5926c54309b
Date: Mon, 20 Jun 2022 17:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655746139
