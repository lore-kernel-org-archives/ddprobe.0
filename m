Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36D04A35
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658786212;
	h=To:Subject:From:Message-Id:Date;
	bh=HbFEsuAIrI4bNIcXOxgfQipezlPQRnjXfZkk0kEuypk=;
	b=cQlwlg10G9R5YtxSAmP8+DHZ0jaA1GX0DB4CQdk7E6XE6RX35i1o6PNdVPk3eyi0
	HJq/DDvQdEqiLTtXA4Zb0rMliPTyr4BvFkuaakzP76EiPTUAQa9kXtdcFkxscvtQaeH
	jZKC2qD/Tls17+fNT7UCIDlLzCcrPHVOhYggzZJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658786212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HbFEsuAIrI4bNIcXOxgfQipezlPQRnjXfZkk0kEuypk=;
	b=CR3VuE8I9nX5vBTqV5ZiOeUoZvuffbLieRvjLOdZRu+IFIefMTvTEjjKdIEBfuMy
	N+5H7tWcilV7pECVvu00/Iah0T/8MxEQsBGzaE0YI3Iu2VA1+ThCWbEXf0zhwSN6Sk6
	8fFQ+GylAt0JXU29inm+FTYzvDZRKy36hMNh1Mb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182375ce9a5-622e5053-7e87-49ea-8d35-31f3244fbd61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ad4e32bbca4e8a38cc48eb7884d43ceada071cc023bc4673a81b3dbe8f5704b
Date: Mon, 25 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658786212
