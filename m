Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BAEA21
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 15:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653407159;
	h=To:Subject:From:Message-Id:Date;
	bh=HQ7CfrurfI1KeMroZV1EmWK7/hWK7jTREaLl+drDqwo=;
	b=h3t7ZKHfB+GBtaSvk3bCfIsf9sosCakAhRu9V1U6NAZdqmOCSo2lyHVoq9hkMyQm
	huG3bbe9KU6kzZp2NwHOYnIKMBK707vtnyMmD+On7WxI6QhOXEkFu1ntTFmDI0mdjRb
	W4bsd1HlP1CyKakB16/rfwNIhUbMhUUGSHAaKgL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653407159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HQ7CfrurfI1KeMroZV1EmWK7/hWK7jTREaLl+drDqwo=;
	b=JJbBl7tg1FVyEGmhPoLVlA4dt2ra+8ZeoeWi8AbNWMLCNwLMG7tQ8CD0n9rGqcSv
	0pIqBhF2o2vX2sw4MDojrVQdznEVIorEpm6tnP8wdKPuFR0cE9EkpKaZIVDRt/9CX5V
	DEwgb/LvrLldx1dp/owqhnzCCTBnVj9FWRCazf1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f6bf140f-2b8644f6-4a04-418a-a96d-0a550c62f26c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39245256432a931f636244360a88cd915c5b13a775d32642c9250bb1d77b374f
Date: Tue, 24 May 2022 15:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653407159
