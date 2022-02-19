Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4F428E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645237285;
	h=To:Subject:From:Message-Id:Date;
	bh=iYA1CaqfCUkwOfGlgIg5NLxklzFdU0ACRrECUbzaAj8=;
	b=XwWSYYCXrf5GLq9CwG7kGORDYCWKhlY3N4iXxABn4FS6flFF1kN9U6Xw4YqM/Nla
	DE8SNw7v9zxN9AM6+OJ2/co1P+t5BjuGINrGAblWQNZXbXy0NCaHdcwfFeNU65CwO9h
	wv/GWB6EUKpqWaU+Z4JeJoe5Ci4/6Bc+30b2pxSA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645237285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iYA1CaqfCUkwOfGlgIg5NLxklzFdU0ACRrECUbzaAj8=;
	b=alotaqt/m+fOBDSd9paeqZub6RKEtd/q4OoqQRil8Av8yxYI9icwvK7WPRSt5Gp7
	GgOWBuUoBddcbQZdpdHLpoX/uO1ld08jndAq9LrIIFPeONSCZCnkZPI0vliADb/y1Ul
	/NruJ9nxpiiRVxZuBcnSCTsAibclaFZzOqkc0wmE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0fc8afad-f1fb0797-8d60-4750-80eb-d48452b944b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8a29c5bfeda4312c14cd43898e7c307ce3ae96e4d8624c0e7931f17ae618810
Date: Sat, 19 Feb 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645237284
