Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323F47C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 20:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653509279;
	h=To:Subject:From:Message-Id:Date;
	bh=a+fQaXnfobiWt9Dp66KZnKy/dS2sR8mejSrkoJQygZQ=;
	b=Fz6W2/494vmfl44VqDzdn+Ko0wrUIVkkUsWw0avhsi1efmtv7bxVcH0u+HEPwMl8
	BEabNMsQ2XbSDZ1+PNike7clV6ExT/k9NrqyBTHl/gK6qe5XEJku5XxFW2c4ebIouiT
	rxImCm4YidSK+wuZQhhufSLocnD7zM4rbDIeDhuM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653509279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a+fQaXnfobiWt9Dp66KZnKy/dS2sR8mejSrkoJQygZQ=;
	b=AdgmAS8lkYMF2qKSyEhqfresmFg/lV21hrsNraidPoRuiShEr3s3q2BBbSaDbn+4
	vISF3VMke/Mfoi3wlCopIesHQzAk+klUYU3VPqpWlwu8/kb9npYJ+/2yE2NsjVX9FCT
	GzwB2yK9TZq7VS+IRbbyrULM7U3HK3t/aTcwKtVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fcd54e1d-45477e9f-1270-441a-bd1e-18e8c18848a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c54e1a8b2d16711eb323b7158a4b82e9e9215a4df796546a33b628da6a1f73f0
Date: Wed, 25 May 2022 20:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653509279
