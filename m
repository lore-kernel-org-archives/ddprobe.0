Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8190E7A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647658584;
	h=To:Subject:From:Message-Id:Date;
	bh=7pxIk1LOWtxxtxyWG+eVeZpV9anqv2n8tuKQL10NFbk=;
	b=gO7ckjtZSoKqfcaIP6ANsv9DSQLf2XVahXeAlFOHUtTBMrN4X3eAebRSS5MzpMya
	SBZXA77Ce4PhoPiEFRJcbMLafPnWMk2IQYEdQjBcxU608kvQLcBj7NGsUAMNleXkZfH
	rBflouTseUKrH1hQ8ud1AkLjk4O0+En86apNQzo4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647658584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7pxIk1LOWtxxtxyWG+eVeZpV9anqv2n8tuKQL10NFbk=;
	b=OMYIOFqmwltdkgk37m1yrZfOcfr79rn9oh1yyX1sXD8Mvsp37OnbB4E3k9qAQLzg
	2WxZ0ku38P7HimGlPS8PnC+6aXl9l9toOLtaefi6vqmCINR1LcKzHSfl1rn9SIytL6N
	m2IGkpcPnfc2Tt/QkZXdpVO35VbSAA1SogTDi05A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa01aca9b-65f34fac-ca1d-417a-be03-93aa955a80c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31e13623e3dc7c8f5d5483a9e8b2f946a8d9bff87eb8ae34083ac54b4971df4d
Date: Sat, 19 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647658584
