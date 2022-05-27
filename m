Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1677F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 18:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653674699;
	h=To:Subject:From:Message-Id:Date;
	bh=hckOzJVGxRGkSqVPvJEY6ssgEqNtPzS7Wg3xvCH61Yk=;
	b=Bkj/jaYJ+MrsI2bKRjqy2A1o9ptR3k4uEkqlm2THEcfhScKHwiQTzcYHM46dOyT5
	ZDdsbD+1eO9VgKFcA8NEY55OGHleTOP2fRKn7XvdkFwaW/5G6CkyV2sjMfxo0K455pa
	oUcgVo+ra9Xb+vbCPkJucio+pX/VnUJsPyI8zqww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653674699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hckOzJVGxRGkSqVPvJEY6ssgEqNtPzS7Wg3xvCH61Yk=;
	b=iTQSztX6cy8L0JIGwUXvcz0dt68dL3NrUAOLRA7LiBrBmyEq97Qr0YwyKWRF0f0o
	CLYMjTtBwNx/dy/NIl2b8EBjb3+imzLTI5Pis0Tgu8zxTxxikl2uupp/ML1ZGOp2f3T
	jOxK6/zchoclkhtPk9JJqcBDES5Z7F8UBUp6baE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106b169d1-a169c1e4-bd90-44eb-8cb0-c92d9a1c0e25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f16d2d2b006f9832ca56f99d42a6ecd489f14ea86e8a7f30f7924a58e57bbaef
Date: Fri, 27 May 2022 18:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653674699
