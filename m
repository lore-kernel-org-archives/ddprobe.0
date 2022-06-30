Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8637E9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 00:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656550612;
	h=To:Subject:From:Message-Id:Date;
	bh=vs/aBzIiLG+KrIbtppBh7qVfa7g28xZ+IBT0Cm9GCCo=;
	b=NACmBPfxorhB/jxRxcgpIfRa+qnYjwTFB77CrKeOGHL9VLdIJ1Fh8Sgv95mTyPbW
	pnwAJIy/mUQKvBNnneOLM2XpJVHBLgQM9DEquBBwUQiNfIJLRr49Py+fwxqqTSxa7q/
	hVGlprw8Uede9NqFWGOzra1G2/vXqCCxzGTJaYtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656550612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vs/aBzIiLG+KrIbtppBh7qVfa7g28xZ+IBT0Cm9GCCo=;
	b=APIYGt5tGhv604IGLH0I7lkyGkwpLHRgLl50avScw4i3i/XQvKrn0gwp115jbi2h
	31Ciz0JyQOkY83gJT1FXszE1UGVpFO8/MT3BYklj4cJY8bThW1ygWKNv6QtFUHB+MZy
	i2MQ/1OK3WBbzTZzzWn4gwvhw4CyCe9ii5RkXz8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b21c5d20-165ec35f-68ed-4cdf-85f7-2e48052b27ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee636f2a152a1752ce88295ac2d989a78012659d3dc4dae15262bc4d10b2fd67
Date: Thu, 30 Jun 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656550612
