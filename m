Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BA5613B
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660981252;
	h=To:Subject:From:Message-Id:Date;
	bh=lLwtUhBbBQFtKMC6UPJAOjlNVMYYb1L/kB4ovTwJjr8=;
	b=XHlbIHYyv/+n1JbGFcgGUVj4ISM0s9/Fo6m/4YTLx5iurSrm0j7XkRc/Kz2uypoM
	rVUvewmy8yVIboDuunP0WRJx7VlDRpv1+4xgWDlgjjOB7D1UKRT5rT6HgqdG+NQNZuv
	246aGyxxq/czj2Je4JxI5wYeCx1NiOQmzaLV7Xns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660981252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lLwtUhBbBQFtKMC6UPJAOjlNVMYYb1L/kB4ovTwJjr8=;
	b=N/BUiEIXY2Juf4fcc9FiOe0IpXTmvIfzXbMuJyMEbDhIb7uClbUKtTL+By9miseY
	8TNg+80N3Q51rbbOCBw6l6MiBNf6MIFVSnaAJWrkfDhpT81zKpW45D50rab4WOG/M3m
	fQzQWX+3gzSfVqKBoMywOyssnowXc4NXVPVfv55Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba3291bb-9b18aac3-0cb2-455c-a2a6-9210dc96e55e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9a9b328c955ca7f4857eaf3683ad43709389e6cf3fbbe0dc90c81be9a217cdc
Date: Sat, 20 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660981252
