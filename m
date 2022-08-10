Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91404680
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660169453;
	h=To:Subject:From:Message-Id:Date;
	bh=dGVtowUKjuiV48KQUys/RswLZL77IZxoXg6ydI/lW68=;
	b=lCTw3ZbnfpGjuKjHlZZDvh+klPW7408YfQ7/o0OO3g7UfVrth6IffRjmP4xbrYsP
	OmBxTUF/KnDpn7o+C7i0O6I6eDO1cPOWXqhJB9DuScRRX+mBmJj/vO3D8lVMRzYWnek
	coRbfKp+iq1DeNIRoAMXWwj2nwMc/5gzfIP5Rv7M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660169453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dGVtowUKjuiV48KQUys/RswLZL77IZxoXg6ydI/lW68=;
	b=Wvm1W1mK+9dE1P9LLN/KpB8YYkrFm+ZL6C6lvkVyHbSn3GxRlTagp7Oqf5Kalxdq
	ZROU74I8pe5R6dEx5yjkR6/2UE8gwITBM0xWk5x6mP8f3zqBrb/3LAVH6U3/o+K1DpQ
	yJnHJx1OUMd9ZWswHPBh8DDoMbUUkg2SoTFZP8C4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018289cf7c03-e307f3c1-dfcb-4593-90b9-ab7778d8e9d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6321c784a29c4e7d3982c49fc48de73d5e644d0f0cffaf0d9b1227550e05b4c2
Date: Wed, 10 Aug 2022 22:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660169452
