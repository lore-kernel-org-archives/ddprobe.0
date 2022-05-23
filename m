Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9254258E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 15:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653320459;
	h=To:Subject:From:Message-Id:Date;
	bh=Txg6qxhXH4PaXS1sXo90J/Udn4PIdcASBIw+/iPscZE=;
	b=QmxEwf7ggHR1rMBu703w+u7BlNZ+yf86D+xVgwYnVSjBQa5zdlAnufYZx/mq1g+/
	WnEmZoX+QlpeCEJrKVubzMALZZvW7wWKfOIWsVGpEiCpv1feWxF699gRICeGiHmi4ok
	LjbiD6dMcFM8LKl93BtEtNpmmNkCrpymTmKpEYwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653320459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Txg6qxhXH4PaXS1sXo90J/Udn4PIdcASBIw+/iPscZE=;
	b=Qwdc0sK/sq1/IXY+YEc8+D2Pi71mbfTQpqWVLO9XpGSVpBn3POGUviZEwI8RIzYy
	1+xttAdj9D4xlINkPcUI1OSpGMyYoQ7B9eHoktwXdSBowQpXb85YQSH0NaJI6UBYiJq
	2kgxC3C1k8l6MSJEm1Q7jgZW42EbXd3AXIf9MTpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f194243e-a5c25f77-e601-4755-bdf6-b3a7e9fd1aa1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f28a44def30891419a136da850936fc200ab6919504c2977b5e731c4df5c6159
Date: Mon, 23 May 2022 15:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653320459
