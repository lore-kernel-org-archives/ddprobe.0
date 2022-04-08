Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585542CA8
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 20:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649451178;
	h=To:Subject:From:Message-Id:Date;
	bh=OtRSs/Zn2CYQSPlBCcaw1p0DiflcYlsItkv9ilGT5oA=;
	b=RRHS6ddfMXMIo+cPQ/504nEzdGMi9zQoKkRJ6WaOwIbCxh1CL+cY4wjbmE2PSCYX
	ii/paHR/CQYdzoUzvIqmcQqwWCH2PeoKpxUGZlSI/sWlnnqXmbBeILJySN9WvCVySUc
	ldm+OM2frzeHqmxVo7VkuId+IhayHBuYe9cWXJWg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649451178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OtRSs/Zn2CYQSPlBCcaw1p0DiflcYlsItkv9ilGT5oA=;
	b=X4/9gnJn0M6R/mrrYjHQfPOknLZiqojiW31Vr7VrSLwr4MPqqFVetI2xtPd8svxY
	XtUMoG6HtCL9PU7Bg89BeRA0WrZYz8ts9LEMlvt2RxF2AoNca3C20lQHVxi3lW1s8TP
	3pSVCLHc8TaM1PrEepIGO8q2UZaLDYcFfpEjBGVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800af3991d-6eed42bb-9c43-4407-87b7-01175c73f4b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e44995e73e3cea349a549afd787c4862f68fd483b39a75c26789af0bde187cc
Date: Fri, 8 Apr 2022 20:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649451178
