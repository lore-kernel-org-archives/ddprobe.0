Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E6B3210
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 20:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653163379;
	h=To:Subject:From:Message-Id:Date;
	bh=VMNQfcdp73v7RBVOjVoVIFcFduAfH6lxDdNV1vY+SNw=;
	b=fTTEFaf1l40PPcTZC+IPpkNtt345avbYKMX6p9z/kIxHnEDjeXQMwsMxMqochEhc
	8UqBENkSX9/ucdGAq8dDf9ky2YOa2gx99MVKX9H7gVtRqEiWbUhftf8/gvTQ9FtG/b4
	iPxza4imN62QbAksvzluCtwVfuP1ilfWGjcdQ82I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653163379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VMNQfcdp73v7RBVOjVoVIFcFduAfH6lxDdNV1vY+SNw=;
	b=IwBbzvQvfBEsWPGTES0YGcrGShPLvXzi1VJ4XHms33m7LGM3V9HOC6/GS+9dAcSf
	yCnzw/ZXdDMMkE7YxyiWWAr2M5FhmYuTp1vQIoUEVw/MxGWWfU6zcqv/1YQvVShucYd
	P6758mrRY5ZN1pPdUox7gouH/gDZn20uRmfLnS/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e8374a5e-29c9a680-5630-427f-b090-90526e9af62e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77e72445f625c996ae40ff0edf625ae45332efb641c059f5012c3003e4a1cfed
Date: Sat, 21 May 2022 20:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653163379
