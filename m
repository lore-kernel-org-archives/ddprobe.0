Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9A32F31
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646716584;
	h=To:Subject:From:Message-Id:Date;
	bh=Rstgm6DyRz/WrIDyAYXnAY1JNDVEG6gmS15Ra7ckt8g=;
	b=i4fAYo1pz5HYBIky1RnfiFDPd8Hi82ogKS5mm6I/tUckc6WREdQq473IcPSsOab2
	fylQGmgJx9XjsHRAeWLcZcWsGmuirBmYvelFCjvUBma49MoEpuLII/jxEk2Xn+1xQDh
	c3hS9Wi/ndTQwjs8KAYGhc9R/QLR6EVpMKggW7Ps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646716584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rstgm6DyRz/WrIDyAYXnAY1JNDVEG6gmS15Ra7ckt8g=;
	b=Lwm8l5+r7ktPZFIIdEpP/QcKjINr+OhHMiZi31Ljtw2pIpJR7/LkwdNoWkjcuZB/
	1mPAcBiuwu0kN68lvd4vpo6B/vQ1Cq4g9enzaVhK30kXLaDlLTsdaI9PwWDjFL26Ndq
	xW9NJPNNm7hZnUMx4AlX3LL2QluNgjEdc0Ubwdjc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f67f50319-381e8e20-2f8f-4841-96c0-ac825992ac0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38aea29d56aeab0f938a9bcfa06b397acc33dd3bbb4730da976b4127835978c4
Date: Tue, 8 Mar 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646716584
