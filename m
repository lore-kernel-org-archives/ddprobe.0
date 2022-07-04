Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230824A18
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656970612;
	h=To:Subject:From:Message-Id:Date;
	bh=uODoa3l5Hx8lWpWptbCLK5K0wiiueGmqjCAWED7ITns=;
	b=eVxkkRdFISFhKlpF/zG1SvuKpBY5COuy/GtjPlPksFkLOp1QXrSOAuBUU2uNJ9xU
	u1zSp73mt0B+r6nhlXFPVhMSN/F4HIKpn95JSi2WhrtLbu4rdFbw9ecrfRZaQw0fMed
	tZVOaxyLUgJHb9GdefnMN3T+VcycdiMVNG6cPbNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656970612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uODoa3l5Hx8lWpWptbCLK5K0wiiueGmqjCAWED7ITns=;
	b=kcYggwu3PKFfBMu8foZUzUPHosh4rhAsDSZGmOpcwA2UituO+L/FqUe2yhSvLo/q
	QEAVKycuPJIc3nR7nOFA1GLwAJaztlQt5KdOA4EqdB+bvFrVhlh7cJvKwp2xNQe6U5o
	Yr6tACgAQs9BJwV9pjIkWpSXvnSbaGT8ISCq/J0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb250e62-b2d35402-52ce-44f0-9e74-df69281dbc58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 089f2da6e9dfc7e326cf4dfea09263a40f84c1ef594aff34426e2572ff0e7f24
Date: Mon, 4 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656970612
