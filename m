Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F88181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645323984;
	h=To:Subject:From:Message-Id:Date;
	bh=3i5FL4oTNthKDOjTH2ugRN4eOz8DNX0PWxoRqTNY2Eo=;
	b=TPKiEueL8YJ7i38IjLtqsHbY+K3b7Upv+ps2IRKYl0cISuNMGr6xoZasaGce++rr
	MAJyeGP1gaS1m/Znc6Eby/Q7/BSlgjJYbEJXuzvoyvzOq5b/WqA3sciEsH72Lni8iJR
	wY5YY/XXMIe/tGli/9YSwWbCA9Eww/NFGefC5u5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645323984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3i5FL4oTNthKDOjTH2ugRN4eOz8DNX0PWxoRqTNY2Eo=;
	b=PsIZC+85yQzEZdv6MB7o4CV3YcYwDurmeFFNFaslW7LwVdavM8ngarjcygPucqe3
	HdpvnRwMPwOXVjdeWuR8AhHGMF+RcPl9RzMmL6sNzTEVnMAGhYFXbBzBoGBbHde+Zhk
	HFBCouQn1QGEogT78XmNOLseK4IF23zmQLePGBOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14f39f9b-4a0088a2-b14a-4eaa-99d9-3c4888eceb8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fe2f7e57577e5a1f370e466614047b5224754bd20dd2bf43f3daefdd652f994
Date: Sun, 20 Feb 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645323984
