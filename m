Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F20D4352
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647523885;
	h=To:Subject:From:Message-Id:Date;
	bh=47y2jh++is80UYOfZ1sfSfIhJM3Y9/ICjihAP9eZRkY=;
	b=GR8BxD+FxtmDZEmBvV4eKZkHlqsACwXNiGVkZDPRA3fdj6ojtsV9g2Ays9stNQH3
	NS9CP5ipXLNVpTrr3W8s1dq6Ppz71xDgCn/OO6pQByFiU0bAIpW7+ZGy7nrrpIOM9eM
	y4TzIX9dJBY0HJaW0ZMSr/eRSue23hjm+1K423V4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647523885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=47y2jh++is80UYOfZ1sfSfIhJM3Y9/ICjihAP9eZRkY=;
	b=XDVXT4RH1wyX7vyaXR/QIEKi228iNu83mWL+ZGTLlmMoxZ594cLhlaL3/vyVhMfg
	1xZsLoeQIfF23VEhVCb1oFPmJcURXLHi1Fxcm03EeKrgzFcwOd87HniexD18AJ3K/By
	CM3BwhzRs5Enntkg1p5Ie8WMK0RjPuf1s+mD24Sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98136ec0-cb00fb23-648e-44a0-866a-ea0241ca482a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56121e8ae9c98335d8106e22e2388e0f174393aa80c48d2ed47dbc736169efbc
Date: Thu, 17 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647523884
