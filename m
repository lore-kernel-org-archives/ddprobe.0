Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A54815AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 04:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653020399;
	h=To:Subject:From:Message-Id:Date;
	bh=xAy/tfoN5frhUmj7EZU9BpIMpBL6wZRasuw56JlCbdw=;
	b=AJ/OgwqyBDLWMLT7ORrmxkI9v3POCZZ/Q49qt+0VAV6jW/QFPdDhaY42cTVOO4yx
	zKApW/b4xHhC3sXZL/8eYimg2dlTMwH0EfnGKC43U4V3zKv9CJPFnOCXi64lu1eLiO+
	rrHLe9bQ5WWo0X+tZ574bWCkJ11NIoZ/aU25kdmI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653020399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xAy/tfoN5frhUmj7EZU9BpIMpBL6wZRasuw56JlCbdw=;
	b=e5LKjHiPaQPkosOKKLj58mMs8aIu20pOKfPYRFPHIP689oYmNuPbj5lPH9bEmL8V
	IwjkcSSBtMYadihaTJlAttnd20aCQLfC+CGssKHXskca7Asd/4PrPZIITmku97/H2ct
	mAeWQ0RaJ5zKYGi1tVht1v2UuzA3kFqmf51Som4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dfb196ee-e85ec968-8fcd-45be-81a9-3c38c1f537d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0e5df9af7ef273ad260ae210fc85a29d5482f2488ff0484e22633d6cd141b5b
Date: Fri, 20 May 2022 04:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653020399
