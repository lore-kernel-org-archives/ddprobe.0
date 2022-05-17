Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA311383
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 12:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652790899;
	h=To:Subject:From:Message-Id:Date;
	bh=fhhFcota4dN4CEhxlbHz48uQbds2YxsdooBOKL1qjwE=;
	b=QmvSGVQde/xgtV5eKjzx1r1UjpdQc4gtxf4v3SgQvAacunt8cm1Ib2OlkHTIZQ5p
	DnMqhFRpI+QlFII2zdSapBZv+T9rskRl+7zIzxRS6AldkP1/oGOj3rSJe9lruFU2uzW
	RfrVoIea8jOTnoGwrKgh2oS5wtb3sC9f0NYErgdc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652790899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fhhFcota4dN4CEhxlbHz48uQbds2YxsdooBOKL1qjwE=;
	b=O/MzRj6Hr4D0G5E8Kbab81GNTN553CGASvsStz5hj6E10o/byO/UfnKV9rcCrCxF
	3weiua9IFc74CxzLPraSZc4b0Tik+75//SvOmnsDnHob/43yemwB9Y7eAjXRga4UWP0
	zwHVLxZuGN6hJXbBKQJt2YVa/Xc1ucjP1OqU52ZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d203b245-2b8cb3c5-c085-4a28-a122-601f47379ce1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f4900b6e97406e2d11defd21f04c6332e5ae37d5d73200f5d756b5944905c94
Date: Tue, 17 May 2022 12:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652790899
