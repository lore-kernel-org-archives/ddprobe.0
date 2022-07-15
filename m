Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56705388
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657925212;
	h=To:Subject:From:Message-Id:Date;
	bh=c7rdALzfWC2DwI6i2FMTpyDyDOWfbgS92aiQyJYXZ2g=;
	b=OpcS5nXkPW8yScyxRsuw21ufeZu94dyif2Gro+YNMtJRKQSwm16drDGdRf9LkC4g
	aUlE07eFZUaioCHlCgsE2mYVprT5vSoazFLow7oKB2TJUAxH6fDh6NkgDh+yAyt7Yhu
	FyCWh91Ke8gda+VkA51k8Or75kko5uR3NT9zQp7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657925212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c7rdALzfWC2DwI6i2FMTpyDyDOWfbgS92aiQyJYXZ2g=;
	b=TuOXth2Byu+bnGgTo/CODsRjhXciK15eOGJmVuksZ/sl8IpgrvdtiuDffsfnbT76
	cJgYMnXsxlZS80JKdEQJI+jcsG3cmwWmKsgjJwG3U5J1BTxDaWa1QQNR+klvi+fhlYx
	LDRazcb9oqhKCMmhabFhJjGp4b0qp+3Cbw2fm+QE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182040b18b7-9667f1c5-c1e6-43a1-8c58-ce70cc41db7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f930f11365ff8534235fbd13863eb3f60944a5e8ca98477b1fc0cb34c8ba2a0c
Date: Fri, 15 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657925212
