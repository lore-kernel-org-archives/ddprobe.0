Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C241373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645739784;
	h=To:Subject:From:Message-Id:Date;
	bh=LUwel3zHqrOUJQZ5n/bZcEeXLycTJcEe867waIkRCX0=;
	b=gPlt+dGkcAgrn3LWsJlaHSTkFZLG5Y5GACKiR4o/4ZQgx5FHfd4o7ts8cL2QVLQv
	h5zJc1hJwRl1vnCh9BiAv6CyaEPDnVcnDXvnAhebfPr8dl9CR8V5oDbp01hrxSHp4y8
	a2g5NahmCyl+wiDQ99BI4l+Jv/dNe3uDt2lC1/Xs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645739784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LUwel3zHqrOUJQZ5n/bZcEeXLycTJcEe867waIkRCX0=;
	b=QdzdAnOI7AdYworQbIn5JQYScf9vmDshY2z0M5H5yxH+LdNqZFyiWGiUtZ2o2Aj8
	ViHaHT4mbYU0KIv24fxsD4gnAYC8pBPLpSdFxGJtsMP20+P1ZfzTMX9vsryzLvd9bwc
	Ibuzd9Y/XUgNdI0e4KfDYwg67XNYxduNjlMasFbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2dbc3a62-ace59d0c-78d1-452c-a43f-08f691a0c6c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ebfd082b9940d4b85137fbaa84bad59e82834c204aea81f1c7b67fbd314d1c3
Date: Thu, 24 Feb 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645739784
