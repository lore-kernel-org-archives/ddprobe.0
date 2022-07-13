Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469AC4A00
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657736212;
	h=To:Subject:From:Message-Id:Date;
	bh=HuJi0LOFFsg8GlC24PnAO/gQ0DM0V1fpWe0Oo3T9g5Q=;
	b=JW8lH19/1AThxP3nxfdGXGXpeqnD8xuh8om6nMT2QyXXs32HYSDbo4Oshw+719um
	SVKF7ecfP3Gw4X7LDbpxqSBMfYC/X4ZHphQqmhI33il763hVaXWlId/uP2UvU6dgE4T
	GNBHlxBR2rfpYoXeuQqwCdqjBL5+fz1CwkdiEyXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657736212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HuJi0LOFFsg8GlC24PnAO/gQ0DM0V1fpWe0Oo3T9g5Q=;
	b=a2y8G8ymqr73P+D89XMDIqzxu4zg/x+ggM4/7zgqoE/zOSBdhPnICquPjyFPIsq/
	gLUkgrsCXt0lwdnO95reGA2X4v29Tyz9fLRGvCcXInvoIdSKfbcBNnFb9LlxnHT6jkP
	YokunXakcLcmFAzmDIBB+1/iAapHRj+0BNd2cEM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f8c72f61-4aead9f4-5b1d-4d35-a2ef-d4276dbc07db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f4745019e2805aaf7533dc154f8864ef3746f4cc8ef58d56451f8eb53ae3ce0
Date: Wed, 13 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657736212
