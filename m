Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EA310F6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658985052;
	h=To:Subject:From:Message-Id:Date;
	bh=csLYeouaYMXty4l7H+NNL4pkyJbMjdT19opk9CNY7zg=;
	b=dlSxvwYwRG059mgVozigYTk7sIXja464OoHAi2SBJPJx6h4h3zRj73QkTk1/9GI7
	VvV2gTiRcAEa//3mzZLyJVRgLgOfqaXEm48jgtGXm+44N5RTO0PrQL8d8909WfsRUrf
	uRDF/2je6XNKFhMomgHreWPDkeckrCACrno1Op9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658985052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=csLYeouaYMXty4l7H+NNL4pkyJbMjdT19opk9CNY7zg=;
	b=E6shrD4vkfw5Xxv7ZXQUdCSYwTLuJ/0UrY99aaicUxiVLvv/pzxkP9EvsoNUHgAX
	yLRDeE93xTHu/t2jwXT1+dmZgFUJMTwLwJwE+M0bdjLxSyZupCx8zNEDdl7OM3cn9Jl
	s2487CLirOAVgNHidQFyAFTdObTy4H85P0S7B6K8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824336f99a-6f57e984-f813-4202-87d2-3394db536ee9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8621d3698569ce75dee02b92080b2091e379168cbe253f036df9d19ab72e2c5
Date: Thu, 28 Jul 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658985052
