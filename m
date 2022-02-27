Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831842F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645929085;
	h=To:Subject:From:Message-Id:Date;
	bh=OiWyOoSmezDwpeD5Rmc2DwoDk9YkzMSVUdaP46Xovqw=;
	b=D4IHa9O3ZiD/OJa9bj+v8DcSAkI7tE/f7qq5w4wErLQ7Eb/vbRYEnX+oEgiA+JiG
	eDOBmc6shSAU1WFO00O+kkNPCspAzvUGRRGRC3Pu0l5KtlgBLtK/mAkCj8LoeH72VS0
	UNg/wT1Zba8VzDvRSuACQbDN+OKa9c5SOGR853h4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645929085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OiWyOoSmezDwpeD5Rmc2DwoDk9YkzMSVUdaP46Xovqw=;
	b=KHjHfhFiVoAQjHyupl49kf/R2dxPh0CcUzI9rIZUfbOnuywc5HeciOTNg+K5t3QQ
	Pg9NS/9CMs3aOVJHOdir0S2JleVUNQwfUlTQz8SQav1ESoJ2nIBpJunrL1CTuxNTGXS
	xen37FmOX7asDls9lMXHpfkH1PWp1W72DFR3RgOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3904b754-5dca508e-1559-4ac9-a689-f000b72db1ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58de02612dbbf49f62a323481d09cf23114ab12437484be09a3b092ab2b5da3c
Date: Sun, 27 Feb 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645929084
