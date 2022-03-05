Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EEF6136C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646458584;
	h=To:Subject:From:Message-Id:Date;
	bh=9n+lc/LDs7UVSRSGvdzrggpGsKVX5CzzHlURQAZX57c=;
	b=fnU0DakiJm7er1QzKNzMePZha0Omj7g5CB2fJ1woCE2rGR/nXeUhrMuvTQiW0Di9
	MT+NxKEADvfUiFX2YUD+PmVDo292q3ZbLrpBNo8qtM94Tky64sOPfzJQxP4fFV6dIxw
	hXl13lhQO3vZSMRnE3G0BWTDo9+WADQs05fZD5Vg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646458584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9n+lc/LDs7UVSRSGvdzrggpGsKVX5CzzHlURQAZX57c=;
	b=biHu7wxZd0AuUyhV/n2Lea0K0NBSELD/Jj9KTChFqYLZg38xGFcnw8LR9A3dbQoo
	iIcD4JBucBrHB9OMCFV3y6Q2pv74A2bfq2txSXXp71L7eP7GILegwDKJxisRccLyVJt
	RLq74DpsowVV/UtIL7X+JMiYDxDOJLmwk9cvFELo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f58943eed-b81f636a-83f1-4752-89c1-779d7f85d2d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f548d58745efd2b105c4669222b90ab89d7414f834485db610df871108cbd1fe
Date: Sat, 5 Mar 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646458584
