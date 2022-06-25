Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BD57C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656194812;
	h=To:Subject:From:Message-Id:Date;
	bh=rViMT34edUGxUhEMOAErU01Ceg2XXHc0CivvR2RJLsA=;
	b=hNhyOGVfs+1zsAW6v6fmDgO0bpfGC7jN7CGfhnZm1+MYCyw0X5F6BFz8kERyl2bo
	5wB6g4QVDPyHmpP9HS58dQFYPkhtOQbrMcXi5DquZrOm6DcB7ALzGzaw7FtAgpmSBHK
	iKx0BgvdusZGDLpWoGARXTYKTWpPsrk/Ypqq652o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656194812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rViMT34edUGxUhEMOAErU01Ceg2XXHc0CivvR2RJLsA=;
	b=NNWAVB/MdjcHrQtFORqfvuYtPa1X++wNafevM1irDiErLDoe5AqwebobjsRlE1MZ
	dLkH+CZAKl4qWjdtY5BAYSFxIyTIPkDNcoL39ajdzgrPLooUFwsYwZuwHFHlFGm2SI1
	ubksZzeb8JMsGhCfl8JHohgEKsTjaWXsh+5YhaDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ce74954-107c2cd5-b42f-4033-9753-328ab37983ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7347acdc19f7a99c283bceb74c77c86e9b49604570316b69cb66bbfdaee70b0
Date: Sat, 25 Jun 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656194812
