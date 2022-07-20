Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A0823C3
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658302012;
	h=To:Subject:From:Message-Id:Date;
	bh=yx6pA72+pgJmuYZS6m/0heqLaUdYBeibvaM8n8ilet8=;
	b=K1Ft818yw1OdIDDOkJ6c2Tq3DCg65C88yB5GpfGOSeE24nrpwubJ2obFMh3bsZhl
	J+xpLZ5+YydLxalNOqA67RUQ6BTEJw0jfbtPuk503zeIW52iRujLhmC0+AiThe7ZAeS
	8X09efQ2FaXZNo4oGe8fAUVSu9jZVaWxEzA/hbjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658302012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yx6pA72+pgJmuYZS6m/0heqLaUdYBeibvaM8n8ilet8=;
	b=EI8xuC2yl35UClw6jpLkqtbeXM2dvS5QAYJTzQY0GO6qcm5AZNNb9kM3YNjE0Lhe
	OA1ilDu7xb6Pqixc0FyQF2eXhjGtAuS50PhRDqrA2m/Agv7jhIs0S1gogDFXtes04el
	yOkI+LbQu5Yy5oW2WNkMM7w18faO8SKiQj3QAo9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821a809b97-ee2fca01-a8c3-440c-b8cf-bd29c8124fee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb9abb126992b47ec33206a65574662580098ffd7a4d9ad50c59ed804815d312
Date: Wed, 20 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658302012
