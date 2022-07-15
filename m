Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D8620E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657871212;
	h=To:Subject:From:Message-Id:Date;
	bh=uzdVUq6Hetwl5XfQHaS/zQcQyQ8WjutufMmHzgwZzPo=;
	b=HezxiLQUNpjh3QcZwR9bwm1nRZieZXqVWjuzB8nujgbBsRji6AR6VwtCnqmgNrd3
	CKPedxcQOYRoXponqIYZ+BHYTHgKpeF+khAQSqirYCoOv3/0NdApmRj8zLleTRerYFK
	m9jx+JRv+qPYCNlc1khGyPByipyS6geTFURcZ8N8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657871212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uzdVUq6Hetwl5XfQHaS/zQcQyQ8WjutufMmHzgwZzPo=;
	b=RuQ+5nxQghfNaqszlFa13SQzY+BtStX36jWJ8YE0mM+D/SnaQjhTCRaTuElmuZ45
	DqUbz/f27LqhGgT5RQysVfrtGfx4267HVzhMODdfmTMcYAWt2PNcI2IA6PDP2K+lEo9
	AhGibYH4+rlW2zcFTBx/D8E1U031Zd6SP6MYyVYw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200d31f02-fa17c200-91e6-45ba-8d8f-5691588b01ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddaf0a19e13e4952c79d4b385e143eef8eb738d09600375f496e27fc1951e72c
Date: Fri, 15 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657871212
