Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAFC423D2
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645032985;
	h=To:Subject:From:Message-Id:Date;
	bh=VMbUHWKAkPRdvfruzWfHiDY3ffQ5ByOUho+UoMvg5QQ=;
	b=PVt3Q8FWO1NMpMIOEjq1KzenUElg7Upmpm/4AgZeGsWWMrfhSI9gx6SCywcQ+Jg3
	8TIRHsGNj0Ruv6guiJxLK5+fTOh6eGO4+CQ7zteEk9mFQkP5gH1IFQ/jubPEXbDNMC8
	fKMfKpyk1A+UP74QFmY25Zn1pAKIo52UM95r4hSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645032985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VMbUHWKAkPRdvfruzWfHiDY3ffQ5ByOUho+UoMvg5QQ=;
	b=X9JpCNxquuYzgoFoepyIut5q+264UyTczJl+i+YWRe9XaeOJ2hMq30zku936HpNK
	tV9tfurwLWG0G6NL1MD+e9OMiaLSsMBSwgkSC+EhNupabj9eABpx+T17pYqVA0qra1s
	Tnuyzt5jiS/VADVywRpivW3soCUpcWJyjHr0pOxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f039b50dc-8ec29816-b044-4c91-834c-0b57a8453285-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ef709d66abcfad16e0838fbc60d91c1dde34b2512e68baa05d6a2392182ac16
Date: Wed, 16 Feb 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645032984
