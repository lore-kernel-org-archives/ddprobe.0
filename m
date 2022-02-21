Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636DD6159
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645439484;
	h=To:Subject:From:Message-Id:Date;
	bh=T8ksGDJ7Y2EAw8DPRdso7519y/gizTlSj4M+YjfPNaI=;
	b=hyQ8itELFYOTcfQC1txuulxwFh+JAg4DPO3gweNLdYzbMFuH7ozfOb9IO41bg54F
	r1P/3uiTwUqpJ7c+4jzZXSnQLnqL2/UCfe+tDWD4BR1hY4XloB/aifVplMK9yZCCvMv
	4v/9uaE0q29uqTKy4u6giRtg/mMkpupmtvgRWdNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645439484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T8ksGDJ7Y2EAw8DPRdso7519y/gizTlSj4M+YjfPNaI=;
	b=EG3gv86lEJllJ8ze5QSQVB85v3OOdxMfkPS3XAlVpttUEiReJQM7uwY/TTF/7B2S
	o/Z+WIvd3mp+wUQLLE1uGQwYHgc+4sLEd4JArjuO/90lx+wlFuDKY0/7EePV98cEWdg
	qTHJRAHYzAi2PuxX7mhnIRvnaxJ0mEfRmHCbJBvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1bd6038a-0ac714b2-0cca-44ca-9d1c-db4b0171f26d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7abde43053a19694f78d84aa7ced63a6fbe1545306afa603d3e2b25153bd230
Date: Mon, 21 Feb 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645439484
