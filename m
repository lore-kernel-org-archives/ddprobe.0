Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0398E7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 23:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658619412;
	h=To:Subject:From:Message-Id:Date;
	bh=xCIMxOMQPe11T5WL0f+mpV3lF+OPQ1I6UN0OJJKwwF0=;
	b=gs9zdNBGE0ZtOP1q+QCJRNYadJvaLnsemz8ZthSgsY0EUEisSk3k5KIDADfdMv4y
	0MwP8tjiLBkBMfUnmE1tE5LYPGeVWnhK72yFepI4UcAylE97j4mdRLsuUpYKW+oARTr
	RF73Gw+7h/UcBNghaQV4FCQnZ0Of1U/IfbcBi4E8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658619412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xCIMxOMQPe11T5WL0f+mpV3lF+OPQ1I6UN0OJJKwwF0=;
	b=KD4dVpn/42xJngT0PQ8DUQfdVq10A/DGlhttcEmY4TlFhAE8qYe4M5ItEKur271U
	Xhgf4olopO6/Fvj1nvVleJOcztJf5/nmezstsXKZHb1FIyRwKhreZNxz4rX/2moSl1Y
	6PkCSMVwN7Rqfyo/SHkYC4YQ49/BnKdQYHh2WgYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822d6bbf40-b61aeccf-e66b-4641-a395-022c2236a004-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fba67a64b32305d2a479a6c3ab91bf0478e58a874eddf852627234b623696ed
Date: Sat, 23 Jul 2022 23:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658619412
