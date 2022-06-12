Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C405A2D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 04:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655007419;
	h=To:Subject:From:Message-Id:Date;
	bh=ggCcAPiOwp/6tx8229p0wWHvlIBIKiWeXyKQNQ9Lt14=;
	b=gb/HV6gOJ71PpPSLEJrPFJsb0YMOWaGpNNJzIXEzZgooC9LHiUAYK5F6tXo6voYk
	VlTC/PPJV92ZWLdprkfz5zj11kTlOeCzBfwrDVYK9OHSGcSth7cKuKTdUsTfm43WDYD
	tC+ZFG91iLDpCNqaaMT0ahEdzq76jnwqhf5WA1VA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655007419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ggCcAPiOwp/6tx8229p0wWHvlIBIKiWeXyKQNQ9Lt14=;
	b=AWx02dC0EUWL0pm4892J7DXcX92FPJI6gHNopSF6OiNLs4F274jbn0/rUnqeTKKx
	ZsJ375ni6/YxcJhQRTnOk6J2HZE5KDET+JyulPjJb2gA2YupdE9r2f7dT1EGe4ZDf7c
	4DcpCQtrMu0a3TDHdWlpNW+7t6dZRTSwWs2+NiRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018156211b93-a867fe30-6572-4b9f-b3a4-e7cbc4c3df37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93800d1039478b6048a85b867b74b6c3b19efc2b7bcdf11016683ac20b5d530a
Date: Sun, 12 Jun 2022 04:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655007419
