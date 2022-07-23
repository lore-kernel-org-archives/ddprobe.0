Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACE57E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658581612;
	h=To:Subject:From:Message-Id:Date;
	bh=17JxoD0y4nyFPwn0HcfIghKwXVjrpysYJpVXdAeKYLw=;
	b=GVAbS9DonBrihd2gqmOIdw89r511ujUpx6BTtX84745xFVvg7wR5Zofx9Csd1vU1
	Hrwr0JuskS0ydweirps1+mPc0zliu7D1/1L7AAfSbVyTXDG6EllaNvcBIMxuCFnqxAH
	B9ft9QXLHkeoTno0pYbhH8ow/3jQ5xeW4r6NadjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658581612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=17JxoD0y4nyFPwn0HcfIghKwXVjrpysYJpVXdAeKYLw=;
	b=IwCDR4TDA87/CTNjiAv8ykI8UNPxERwRK6oI5DWTuS/ne40kPrmloPd+dRs7smsw
	Ub6vSd1hPIK+g2lSAXOHDfLtWmdRX9V3/a9rpTrHJfn3EZd7td59R/CEU0/O0csToeb
	NCNijUPIRMv8gJpWsYJg6ztpdjwMJei2uaeZcCQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b2af733-a38e88de-59db-4f6f-907a-953419747d3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62c5a45284d555c11b2c85cf383fbbca48bdd4f30cbb990a559bd1777eeb7867
Date: Sat, 23 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658581612
