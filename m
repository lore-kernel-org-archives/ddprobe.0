Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7CA7C
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659572452;
	h=To:Subject:From:Message-Id:Date;
	bh=pBSwzLw9EWnEobjtEn1bLIiz0ykON5byB9fA3eBzMsQ=;
	b=gG+Yd91BZp+YTobocjH97nS78C0TjN3jVGTGy8ZGDdLBtYJNH0NTYcwYqnlw9teQ
	HyVhQLlCczWPbfnSR8RdFvnR4BccaqsAkRwZQ16+LeI1dZTTCLTTxK3LSFCbtcoMEjy
	ZQ7FFwGrKSZLYnkubZdkrKlqqGa4kfefSnmMq6Bo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659572452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pBSwzLw9EWnEobjtEn1bLIiz0ykON5byB9fA3eBzMsQ=;
	b=UV7DNZpE1Z90ra2QbYS2S5oZEnCSE2OJwcmaJm09RSMfPACzB+ghry5TjWri/9EB
	pd3BR6trvmIZxZrlWMwRrvaGAZkmAX6wYVWfaRH+jRNc2m9KK8jY/fJp5K0Iuepj386
	gCpT4eQsYhEktDe8RHf1kCGRdU2/utYfSpkmLwhY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826639fcf3-29891b93-b279-43c1-a899-827264235aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93e7cfff58cba7fb8687008960f46b2bee0d9c0d8f40cb95a4e1062d33ed3404
Date: Thu, 4 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659572452
