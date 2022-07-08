Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B754A627
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 01:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657244213;
	h=To:Subject:From:Message-Id:Date;
	bh=6aO0CTNI54X4BmSXasULN2Cxh4VwerkjQcZbfw/pH9Y=;
	b=DFon/7/HsaGQxApuRSGfOjMbnZoGMKvdjXrrxdogtMVLPYecZX9rzbwKFp0FqYny
	f/Bgn6Uv4ou127iOHyakvr7IWwaHAyoMXt7UvFGElnBhLaAjAU1/6tNJEl1xh9Stwl6
	qm/TuU/9tPU7DQanyBR3hqrhoFzmrfKt8ZdbhKtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657244213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6aO0CTNI54X4BmSXasULN2Cxh4VwerkjQcZbfw/pH9Y=;
	b=iaMRsAbMrbG6Iws6hu10dYkvC3avWSaBElaRj/QD0BiFhpnELSuby9p/1WqKAZ8E
	ZCBK2YNbQmE3O7kplcyLpKYld/tHCtG4QSHSdREoj1TG6jMebXZRqqyS/qNS3DYltSu
	p2ywyEllM99O9+XSFm+bkDOyiioEr6gypi4slVLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db73dc38-fe2b9c2c-cd3d-4eef-99e0-91d362ccbafa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 470d35e192635f12f767bf5372024bb04cfacd38bee54c2911987cf07b4d09f6
Date: Fri, 8 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657244212
