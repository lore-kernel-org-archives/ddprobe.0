Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2371FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 06:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656831412;
	h=To:Subject:From:Message-Id:Date;
	bh=kpumVnY9kxqs8PehR9+DYkoCetv6D+Pfy0k/PfiZqHk=;
	b=HwmNgYp7S8IO6ouKx5VySCSedzD1HkzYmDUmlDsqBe6qSGAsciMEpbdTMa/sBNI5
	EkyvB9uhaPHExzKgpAF1Tw0TowEY+gfcZahIzw2xlRKqjDuyR8kLCCw9k4ZzCsqZKBy
	4gEWGThfVdpR0gjpGNxRbtvq31O7jDvi7PSp1tVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656831412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kpumVnY9kxqs8PehR9+DYkoCetv6D+Pfy0k/PfiZqHk=;
	b=FGIpHwZ2UJXNyvHRrayAA/lH/yEwCXOixmWADvegd+h2f6XPP8443l/ITprKikpF
	aPFwo+b7/Pxrlq35Is5GaEi1GLPN8MlJu/92g0u5VIOUwpv8kg2islnQsWjsYYrgvsF
	BpjjPno01Id2bfXnHTRKMYQ9Xqa4o000nK7eHYeM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2d9083a-179e6c06-a767-44bf-9051-121c494a7bbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab59866e95e2076ea7f1d923975d8f985f64d2fda9e7ff98aae6addd21e0ac20
Date: Sun, 3 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656831412
