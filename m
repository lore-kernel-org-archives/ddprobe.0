Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC797A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647185784;
	h=To:Subject:From:Message-Id:Date;
	bh=VfNnGj667Iaam8QySIYohgVwBuojKzBBiNvkcJG5MAw=;
	b=aOZ80d1nzfoF5sUCQAAxqmIjxlYy0ZeD7SaOevEUBeUMSoIUu9XxjPSyYlKw77rn
	Fm620MMsuyLBtzCeZINUYWyeXDIwKvACG0I+RXMgx6yahdfpgbQK0oTZcn+TYLd+tX6
	LV3EUb0jbkAG8YRWwXuv2pucNY6XPHeCM7zWLN3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647185784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VfNnGj667Iaam8QySIYohgVwBuojKzBBiNvkcJG5MAw=;
	b=ZM6A+9QdNB7WG9jZcPZMztEwDuUmrsfkY7SAXBhmCmb2BGgeA9MX3pIaorACjeF0
	mIWmSgvd6oyDLROdCHPSvufcHOciflpKXqZ1ExpvWXlGXJzfQDssIDF15c/hLwfuXJa
	kkXF8pIYCJN+KqKMjD74xJRY/H7yGhfAkc2vk/dc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83ec6feb-6717a890-92c4-4cb5-9676-26efd487e226-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85371888f90632e7194967cf07debaec832e7f2a496a1cb13b3e5d3ec5beb3cf
Date: Sun, 13 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647185784
