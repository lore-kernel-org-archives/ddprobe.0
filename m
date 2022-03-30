Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5657F7C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 12:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648642618;
	h=To:Subject:From:Message-Id:Date;
	bh=9EyPbfn+EP1M4IoG3DNVn1Hqh87OQr4yprntCPIEluo=;
	b=Acba27hLr4GN3wiSMUVXa2oQSAnx7e1S1cAXL340RpG0tZ/gtTZtQRsBqKFAwVSR
	BJRPF2WxKPaLteMOWPFYvf6/ASpUud8TUhJx1TEuinvbvB45FRxpJfhhb0rUb13DgcB
	I1JDQhY5SqQANRnmgSj1YU8KLknJUYpWJi3vxLRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648642618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9EyPbfn+EP1M4IoG3DNVn1Hqh87OQr4yprntCPIEluo=;
	b=SI9COG5kwreesY0H31bkAJ/r5B+ndUbYuABn+2PobfkAlNXZuav2olYz74Dr1RcE
	8EqV997S2mT5pA7lfTQul7OQYkb6cmEfTpHwdVtDJuCQxpRW2QquUsT8tM0w1SF/Z/c
	/yMBnYUMwmGfXbQKHKZATykAQJ3cmiB8i236kfhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdac1f36c-5439a5de-8a9b-4601-bb51-43c34538ab62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0930fe082b678173ab888617873d604db8cecf124cc8a0771705a2988a582614
Date: Wed, 30 Mar 2022 12:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648642618
