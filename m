Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FC120FA
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657085812;
	h=To:Subject:From:Message-Id:Date;
	bh=958UlI1uwYSJi1hRlXA0+eeyuDmc+2mb29y/IRbngcQ=;
	b=kXeB7Mnsnc9gnjROL1dCaxTHVzGNeIO01n9RuDmvjA4K5dDe30VWWR8qJGuelb6e
	Wr9owwA2dISVN9Q106Wd/AdMfLtKXRpUtbVEooyKQDKiXm8wG9xWYG1AHUGOy16RUBv
	yomFYPbUy37pngcpKnbFQE1CMCM47lFj2C7El4aE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657085812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=958UlI1uwYSJi1hRlXA0+eeyuDmc+2mb29y/IRbngcQ=;
	b=SDQTqxpsEjGj9GuLjtTbZ9t3/QTtDFaJLppfjgicN72w10loDNPVxXiUajxoSx2N
	yODZS5qPH5CpRoEs+oxZ7PEFkNgx0WelBMDiQJc2MFFAbWIroSdoXntlNtq476rHoUv
	VXA5Oc4vPDIkqPZkJjPJU2esFQYGlH/SUrFjRGYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d202de25-d010f2e4-1ee8-4506-abcd-f84c554e939d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b953ec529a6a82ed1a63123881860a981a9f9bc99ab08eef63652da4a610b737
Date: Wed, 6 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657085812
