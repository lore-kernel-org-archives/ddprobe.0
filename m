Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B80B627
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 02:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657246612;
	h=To:Subject:From:Message-Id:Date;
	bh=jqH4HXsZ/TowXgQQCV0gJI4dFiLmTwltAyFz7eSdq3g=;
	b=bcwaL00kCGIcSizdK0cLxKH+etIytffJ7HQ2wYbyEDB1Cqh+zOrmTknMSeo7SA8J
	6thngHpJauszDpTtRfy+6GGvztfwnHNvUC/Gp96DYIvpxwcdZAG+5IaipWnRBDXPJXY
	xZDEucPGfydQSkGMwJtsT9nNxwohIi7wxrdn8p44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657246612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jqH4HXsZ/TowXgQQCV0gJI4dFiLmTwltAyFz7eSdq3g=;
	b=NG3gj8LvtW7ADgzflEZ4gHmWy47Jlup6Sl0vX4atX5YHkjO/Q/62AzSgzf/BbKZs
	ysti1ujGF9nNVwQLikQsk43bQ35IXrJU36MM5RStLBqhHGv+E0amWfsz462r3lo40N+
	zN0VC80EoeoXgR2MboOg0NsepdLww9lF6ETd9E9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db987b1f-bbe1d95f-6783-4543-a66f-8f8eea1ba035-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cd73f4fc38ad8929055e1903b7252ebcc9d8bc0ec69b5f20a44d29b67a383c9
Date: Fri, 8 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657246612
