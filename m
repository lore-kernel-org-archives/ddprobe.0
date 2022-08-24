Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C5A10E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661313052;
	h=To:Subject:From:Message-Id:Date;
	bh=GKGmVIc0uBuXBJwKJe+TwJc3jS+zab7nXUJL8qEMB0o=;
	b=Ypcfj1kovukroH07jK1lqjMhecXvt8PnA0aiuqyuwcFuroNEVLuhwWh7IzGJ0TGQ
	KpLEaDc+genkfOHweZi2CHTbXnQ85OZmrZ/kHXIITyx+IW3UIKO6MgzcHDsXkccJwIA
	y7zKvomc+lK0+Ea8fVtOCNK3G2O9latha1Oa/kfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661313052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GKGmVIc0uBuXBJwKJe+TwJc3jS+zab7nXUJL8qEMB0o=;
	b=FN+O9bU2GI1DedmkttZJkjwr8jrcbwWzmp9x39ATBcvXn4QaKwzUS1aAb+CQHXn/
	iM8BuSMv7SlpzeDNR7hFQDAOWWFJFtZoANSuotpzrqVtTQZ80VkBZ2h/B78F8th1D09
	HwVIjxxUcNwyhpm4PV5HqjGoeC44ssXVZIS5oNi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cdf96f5e-0e6d075b-0068-46b4-861e-0c1769479c7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c99d7f0ff32cbd531fcd541adb16d9203ec820f1d9b88d0fb137638cb50ef37
Date: Wed, 24 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661313052
