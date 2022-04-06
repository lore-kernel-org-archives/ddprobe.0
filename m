Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1A417EC
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 07:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649229298;
	h=To:Subject:From:Message-Id:Date;
	bh=holhfryCnmPbFT+yEce2JWpAnWI5YwpVuIvoqf26b+o=;
	b=M8n+o7y24Xtbkny16KC3bS0CzCI1dQPaAThyWFNjLwydR27X433NkApzaXShuZDb
	IUstCUnmcHymVUqXNX9WhK7quKniFXaHoxKiLak8qbHVTkR4RiKe+7PL+uyBLOUxV2j
	ERNYV2J+QbbuKlbr6AXZ+IFMsq2V0iEy8WGagaLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649229298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=holhfryCnmPbFT+yEce2JWpAnWI5YwpVuIvoqf26b+o=;
	b=gwSpp9mcrvzjWHaXrshFsXuJT6SvQ0dJveNnO6dZDz7ZHDzGaCjBpcJm4NVEV+OQ
	Llxli64n/vEhcccXBuUcLotedLI8jrsoerwLjfHojDeIzOvKQF9yhxa7GoCI1fIGV4G
	gnRglq7tOXq9dawoIVsGfhHK/ewETGPEWExzN43s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffdb9fa7f-84ba4c05-7f70-4994-89e3-2cb83a0af9a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ccf3a3e9b52dffc94820831996dbc457e09986663f982998077effaa3f60e95
Date: Wed, 6 Apr 2022 07:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649229298
