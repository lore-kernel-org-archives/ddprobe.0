Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B73120E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657870612;
	h=To:Subject:From:Message-Id:Date;
	bh=HADqCMjdwlN62rlJiNVAs3nbX0+AQ2Xk9Wah7M/Dw3w=;
	b=QvsQMKk4MVif/CDCJje1FjSJQAkefdcclaF+oILGAb6WVUNJGejrIrCDSNyUPA55
	h4QQSubHrDJ17VBCZ/SKi5dQzJafrrcuMYwdfvp2MenwyRUlXQmrkXF4rfNAcYWM7ll
	qLib08WPjle2h46jjJfFRtjrjr37d3+ZxyHezgHg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657870612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HADqCMjdwlN62rlJiNVAs3nbX0+AQ2Xk9Wah7M/Dw3w=;
	b=ido/qzUuCgY4K8xC7rYdMJnzvV5IBJhw252OJYJaVOyQmP1sm3NMr+wpZXWJ1JSh
	XGzhKcyZnEKMawSCNOIhbw6Z062+mrd9wQIJ/49kXErFhXDnauXTYFHhj0S3soIe4lP
	guSDA0E8LNWjH5Z4FLpc428A/2oET/6AzvkNHudE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200c9f72f-4fa0cd9d-095b-40d3-a530-c59122491576-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1a7bd16cb26e6679c62e2bad8b10a57b2f4c8f137978930a77d640e25a961c0
Date: Fri, 15 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657870612
