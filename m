Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4286E17EE
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660901452;
	h=To:Subject:From:Message-Id:Date;
	bh=ODWMn4UjvrED8HIETK2iuT9klq55TDebgS04OaSroP4=;
	b=iYVp17sLD9esjSuiaHAYqIFPnopGW5V9iWLD0idLHbdCmbWJrmLM/hZZY1FmaEIg
	FNjFXZ/YfujNmUeXdBQjFFZSVbnb4JVph1o35WYVzNHFOTax4jkMkwi/NKvYdRlLMgw
	4Y8xgVrcbf++8F0aaS/k5OuTWqMkCNJodmh9k/kk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660901452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ODWMn4UjvrED8HIETK2iuT9klq55TDebgS04OaSroP4=;
	b=LajsrTtPPkm9mJOQxxPtMWZOHGO1FnbNMCaIAbMrVbFUAVEmL5AXjA8pig/vh+U+
	XfMSexKPD0coHaZzKbjpXQ02J5MNn575iVI7T0afwVONYGgc5SpVwTAj0De4IiGL7dl
	ARC3uSou+ChwtVYgTO2NKoTZwQ2TvB0U+b19nQ48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b570eb18-27fe7b6c-0ad2-40a9-b1d5-86deb8cc463d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e9b912947923a44902d71c51e4dee4b5255650cb4db91837e9a454c4d23c16d
Date: Fri, 19 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660901452
