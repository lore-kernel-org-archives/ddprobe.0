Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A91E7C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 20:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655150399;
	h=To:Subject:From:Message-Id:Date;
	bh=vlhzXnsQvzGj8jdFxv/o7ShWzhef8vYl3jnpVdDPk8M=;
	b=AwzT8fElwm2WY3o2CT56EWeUQK2ttMtoaDDX1bx0tFQfCWXIABCLkwbFmRtJETpM
	kCBjLeHlWx2MYNr8gmsBgArgevJxb2wNMAkxGAfZqhchWhWPK3xPRWX/mo/I64JzXuv
	Mu17kUM+vkJPpfvBGQKELV7b+iYK/vZf74RrqLsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655150399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vlhzXnsQvzGj8jdFxv/o7ShWzhef8vYl3jnpVdDPk8M=;
	b=B7Sxb6rvbs+Rk/pRrIV9L03ZHHCc6mV3s+SI45mUcX3HKxICK9UdURpEitxlOgs9
	HTa3kf0tZ+TSH4NuxkLZCtgoeSDlgFe4qS7KLFyfGY0YNYcst+ooAX+APobBULqSpdE
	WVLA+EHK8eZLOiiHJdqfB6m+/4wihknIxqJDMDOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ea6cf1e-3f3177b3-37d6-45f8-8997-e43bd2590d4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e90d337cae739d046889e6028c8c47b9c93c757877e4464e895909d020f8c3b
Date: Mon, 13 Jun 2022 19:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655150399
