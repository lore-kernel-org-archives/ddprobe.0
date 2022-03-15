Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634E710F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 02:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647310284;
	h=To:Subject:From:Message-Id:Date;
	bh=7Ipqi8EiTYKjxTFTTY9gtuNKNY3fQGOqN7/iNVB9YIs=;
	b=UP+3NnB/StTHReZmgovMckxyDGgVcCrGI5G6n2PR9Rg1LLJJhWqyo02FKdagPceX
	0mM8IAMtCRf+WSM6LKb6tgjXzP7XPpxtfCO08/wYz0T3/vjXeVMWGoBJdXpfzklpshD
	RUzpK6KjfSJHCu1Efa8DLGaZwgax98pWSvwqqLr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647310284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Ipqi8EiTYKjxTFTTY9gtuNKNY3fQGOqN7/iNVB9YIs=;
	b=eQtEgRGp2mClsYyEGeBD/YWvZKG7NSx3rwLXNHwGBPmaRwcTZpJfObj7bmxm0san
	5Zd3sCCsKzSKcrfxWvNwM02Xy+cQfoga/7c8szWahML80I6V+5785KTvyfWHM/XjUkb
	xRwIgAsoWY4ucUOaCvqsN0U3mBLOtTNbOnbWHOH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b582813-58c193ee-f8f7-42bd-8c93-02b6a748e758-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78346b0f636867a8a1a615e3115bb85f7e09ca210969f8784d8b74af4109b324
Date: Tue, 15 Mar 2022 02:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647310284
