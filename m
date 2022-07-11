Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDA01389
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657500412;
	h=To:Subject:From:Message-Id:Date;
	bh=tLrobedcpvvmWkKL66W1nDrCWMd5ZYjBBmjrnMF33uw=;
	b=jEiNGHfm2JLYk8SYwRTrGQ7BfJAiW7AnZvdMIum980SkTvzgdT11+jiT1C0EWQUu
	z3rOekL5tdC3ByiyuTUpll/Jn5gLLaZbQPgK/HPpq25PghNQPeU52XdWtAZY5YRigdi
	uv8AgeTd8JTmdQGFijSSWPnb7zJufA6OPRlyn72U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657500412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tLrobedcpvvmWkKL66W1nDrCWMd5ZYjBBmjrnMF33uw=;
	b=bM34WAHZwn4uCs7doqF3CRA9Mqj4AL8mAOlWg0kSSq6tEdopqpor/N3W0wHRwJt5
	gPmzWP6InHEsa5vcuvk8DBMwWCMOEV0baQR3W1rN7V7FPBDGnUJjDw9aKML+CnllYhD
	B9iNn6iGxWYfBN81VmqfvLpvskaTqdmhBgXap3ig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eab92982-3b97b09e-5146-4289-af47-5b2f614fbad6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f2fe6dd74bcae9802b5ed35cc22b8f6be0f41cdce7daf75ab44f2ff21e049af
Date: Mon, 11 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657500412
