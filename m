Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085C61FB8
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 03:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652929979;
	h=To:Subject:From:Message-Id:Date;
	bh=ilh9ocNJsJwRSVx6ZtBPgOVbeSIDOELzYJ7gMARQBr4=;
	b=jcNp89i4k8PBYUC3sF7Xs2XEHIIteGTMVPwkWdJtYdZUtkY3jk/ciMG6lBeUiGAJ
	s3IOkLQnPn2qvR2AcmXi0qCGtMzN1OlQtiWlhsQBwKu7qXzZIK05350EKAaBJzHMyDT
	kYUUayZzgU/Y1JHU2j+WGLDjGcwZ8Ec3ekl5FtEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652929979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ilh9ocNJsJwRSVx6ZtBPgOVbeSIDOELzYJ7gMARQBr4=;
	b=TA0RFXF8a2y+pK6CZRoEByEfNQ4rjyi+SX5GoaInjL/BHoTwKoQn9oV9e89QRIuG
	Yimx1N5Uu6TqmWjKZqGyY8/C5XkO2Ysdb7/tN1YYDgkj1y+/RfHv4bcw+FMNvsJL1Ce
	eRxeC6G0BrXjej4KwTYrru54zponYJcPSaWKYRSc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da4de3e3-61faa796-0884-4892-b3e8-0570f5d2120d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13dc9810b910e5a8d8c9d60982520df92598643a973480e543abb99888801379
Date: Thu, 19 May 2022 03:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652929979
