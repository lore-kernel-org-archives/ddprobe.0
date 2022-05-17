Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BFD1366
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 10:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652782259;
	h=To:Subject:From:Message-Id:Date;
	bh=TiNnIbRl1uYhVjHeUVGChIZ0qOMk3SFvAHegh+EO6Fw=;
	b=DaK2VptPPI7TEWklxaN6FgHDP5ORWSYTfKSIYaTSoBSqtBpqUjFxZcjRNULKaGI1
	q5ga6vgYzJC1SN0/SDAelbzCRdpx4jxF60LB4w2ZOBkZIhah/stV+RaeTipg7Ph2GaZ
	phbXcBvUbAp1Gbw4jtRVHW+puZ5BO3OU7R24kDNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652782259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TiNnIbRl1uYhVjHeUVGChIZ0qOMk3SFvAHegh+EO6Fw=;
	b=P67jcSY2BuYDHDjJwcMBvkzex7YO3aeSMxQV5Pj8WyOom85lxE/SmBpBxRZLqWRh
	Jqq24E+TKydfF+A2VWLFH2ojed2JhCKwic2l6sjX3Nh1fosA5/ubjQv//Ii4C5YchMV
	SfFa3zUseuYDl5JNW5o6LYwDL7ucx715K/IMTGsk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d17fdc57-803c986f-94ea-469c-8de1-300819c8bb0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99ed85b24052c3e05f8dfa9bf9ae03c473d432770c2d65128c64feb926361fac
Date: Tue, 17 May 2022 10:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652782259
