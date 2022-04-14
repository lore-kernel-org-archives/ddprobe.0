Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDAED3219
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 20:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649967718;
	h=To:Subject:From:Message-Id:Date;
	bh=/FU6wRZ7/ht3D4Au9u6O1MwwftuHhr0c2cSEt9osPf4=;
	b=TLS2p0w9mA7gizOju55olBVwKuaOAhacRpLeJvOFJ2pG+3nMFfFvuPlUwIGWir4Y
	h9JTDqBzB3zrIjfrByl0PhbclwLUzjG5xDudjN6wOGfgHpTAxWus7T3Z2sZY8aAfyqC
	+DQ9lbkI5qUR8EEPX06Ouek0KbASCvIpD/4QpRRo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649967718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/FU6wRZ7/ht3D4Au9u6O1MwwftuHhr0c2cSEt9osPf4=;
	b=LYp4wkilH9uU3XqkE13g+sg1d6AQsmr+aHOKFG1Sq0gW9Mm1J6sjWPvl4QEfQHXq
	Bdze5xzGQIm+OjG1xOfVOjt7Ymx2DPhdbzMg/MMt8v2rcSrpSrIT8ONyZsXN/F+i9C8
	F+U09IfWxbr75vgo2503/ygjMCqt5S+xCcP68Pwc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029bd5f57-aead0337-deed-470a-b896-7283297a6529-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93e80687ba4e557e362d1f7230a1c5b0c1aacef7d518870eac6a5c4650878afc
Date: Thu, 14 Apr 2022 20:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649967718
