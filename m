Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D04F33F0
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 19:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654025219;
	h=To:Subject:From:Message-Id:Date;
	bh=92PgPTfx2hwVNPtmWyr2ZDVK2BqG6TcdhX8I6lQK1Ck=;
	b=dKT/d05RyAhXPOFu7BQbkZCBJ0EQXR1mZbTSjgFhRwbkfHlrPUBjT//bq3SS2WPK
	IJciUR6g6PicRuDsSEfUXYTXcWiRlnHMd81IzpHxNXly2LKS5Wbh9V08wjYnhuEab76
	nRvKoXruP/8rqBTrZuajZGnbvgfuHBXDGiNDWrzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654025219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=92PgPTfx2hwVNPtmWyr2ZDVK2BqG6TcdhX8I6lQK1Ck=;
	b=U3oZcv1FjkhgqrNZViHW4wQSMvyC1IxcXabDrs569m1zgxVByxt8IzBg7KJWs6Bq
	KZWEDZb+UcB1S9QlcLcALeIsEM7Td3ZkpxWTtfzDJ/L5FiHV1aYLxfVHAs9YL4OlZlF
	StZiGifDQD0fQbotqp9omuR9DpE3gjF0w+1qp+lg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b95ed12-6750ced3-3fc6-4cb8-b963-58c3c6d2fa83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1ae3ffc116bb88b8f16629e2a3d321cbb64e6f98330394396a740cd3d729518
Date: Tue, 31 May 2022 19:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654025219
