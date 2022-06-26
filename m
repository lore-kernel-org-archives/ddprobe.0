Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05B317EC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656230812;
	h=To:Subject:From:Message-Id:Date;
	bh=ogBktFQfTqch7wTOXnFgrkb9RyFE7mTkO8WviWpiFng=;
	b=QRiuzEuK3IW0PaVrk61XZsUlrVr28Od6/249N0OwQrAPZCvXX1ePUdoDVIUGaMUL
	mU8ljyg82OQkeryx0V88/FySHZy6YcIFjrFdJzPE4mBM7VMNf8IunrD7+dL+brvrGZo
	0KwI24FwPUgyx9Fl5eok2Zq9TYP9VgNGermQMzkw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656230812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ogBktFQfTqch7wTOXnFgrkb9RyFE7mTkO8WviWpiFng=;
	b=eMQxXGmyvXN7iXEAp8+cbaCfvZcB6F2yopApgY1fJpbR3MmyuyYUrsMAqGe7bj4z
	uAiKCoyhkQ0kntP/49I5x65vbXaAwozmZqhQ9tyuWL0ZshF1+BNVq3m608MiVyg3L4v
	xAEMdokH5hvqYBcfBumrpswn8+o0FF1fjm6cFEMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f0c9a87-fca52d4b-1ff1-4352-ac0c-28b08a54d2ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee48f5b7be2bcb72af5c8010426a75d017dc62df962c7106f08e3685466ca1a5
Date: Sun, 26 Jun 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656230812
