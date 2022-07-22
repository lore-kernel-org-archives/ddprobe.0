Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3246315A8
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658497012;
	h=To:Subject:From:Message-Id:Date;
	bh=IQDMQ/Ti/ToDcNyh+Z5bWH0T7Vgt3opWLGWTpmjYq+A=;
	b=Q+jXNyIaXxZuUbZnj/wFBIC2jKrUJiHRyYkayyHYwyBsaKnv/7OjcyZMnq1lBmpw
	eSprBNGjVJc5zuhfCk2Ud4+N83Tvhfj8+WhaTa9h4Hkyq2W0ziW1AyVswoRAGd1w2EY
	b81SmhfjVBzduyMTXZYLNSLMEbr4fxAqOpuhqYHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658497012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IQDMQ/Ti/ToDcNyh+Z5bWH0T7Vgt3opWLGWTpmjYq+A=;
	b=BkjycxRgcRCvLbzX6MZA6B12hy6poqIoayjPKNsKy5BFKUaAYb2Eqf8rN0P5TowP
	e6lWu9+SRGJO5oilt5S9FXkWq0N8gkpHr+IlTMcG3/zxixg/ZYwY11U03qjYze5d6mm
	sOHvnhzp6Rj2E+kgoDRWYcL0myctRV4PaOvqPjSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822620125a-723da1ff-9572-4908-8ab3-2faf9b001df6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08705d1ed26c781f7fdf10905836c558687ce4f26feb820fc6acfb0acfe0785e
Date: Fri, 22 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658497012
