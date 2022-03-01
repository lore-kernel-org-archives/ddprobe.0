Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C363F161
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646152285;
	h=To:Subject:From:Message-Id:Date;
	bh=BCqyNwGrRyPZQSlRkb3hVV7uEkFNf+004UPlDCYdAyA=;
	b=QBYG4T+fcboWZ2EcU34/7yqmPRJXlqwHho3Aq+bvB7gC6naNivXDUZDCqYP4EGr8
	L4salWryzkVZJ1wco8jDIyreNquWLlbv9kNIReGWdFzO+Q/0f/t8T43W42FT25Qc0al
	qPuP8N8ZOpciXlg94C7xRwBgCrcqs1oBXNj3WsGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646152285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BCqyNwGrRyPZQSlRkb3hVV7uEkFNf+004UPlDCYdAyA=;
	b=T/c/N4JlfHhj85kailSr4mr/jGcOHRsdH0UyF/6e/RV7Nv/9tqJOcrqFNWOfO6ak
	TVTW/kEbco/U05PAUzsZCXbO4yWfZURn1lgqNrqyPfwhJ3BLYQHTG0veHGyTSsTcYLB
	CLAj/rNqwQSBkRUq8WpTJ4G9GpFeRjMkurYkwCZ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46527acb-c699d72d-2b04-4f21-ac3b-0f00f8e714fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df7bd6dff521f33f0f7336bb9eb1a68a607e325eb3ddaa00d7ee3ca66eb6cddb
Date: Tue, 1 Mar 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646152284
