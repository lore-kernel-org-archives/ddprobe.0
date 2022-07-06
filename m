Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A06173
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657066012;
	h=To:Subject:From:Message-Id:Date;
	bh=A0ac8ART/HCKbZSA35Pj/jp3hMOafkEHVMnwwyzgPf0=;
	b=VpJWHQ2N5+Y+6zz10rfsBdgK9RCnfsUUXxIMm/+NOE3QvRyUZNiZv0pQ3+mDZsBa
	cDIrH3WVMIXxYuGat6wB5RaQ0xFPpN2w2CQR3W2XZXmatWVZeJGmpuW61ibyskVz5XW
	/3jxGhMlywQ08Xy0Pw3JsGe2JOI7aHyQ6oJQQc1I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657066012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A0ac8ART/HCKbZSA35Pj/jp3hMOafkEHVMnwwyzgPf0=;
	b=MTJGUQZOABmTb17T2V16elNOQR4p/d/9y+AFED5CuDeXxFE0ftxfGygLm3CbJdtO
	bSzvKRmtrWiDDdud0+PcV7T2ObRQYpNjC/b3nJScO44szQMoggG4925a0M2M+y2cEDU
	TePb4P50gEowm0tP72mE134FT4AYgz07HcifBr7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0d4be8e-ef86ee9f-8574-4de6-b4b5-f8218ccc7619-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09122045d8707540fb57caccb65701063e8e573a51dd4dde8f3ee6f2b634508f
Date: Wed, 6 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657066012
