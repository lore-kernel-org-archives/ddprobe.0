Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E491841
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646475684;
	h=To:Subject:From:Message-Id:Date;
	bh=USk9NyO6I5+gp/tV5Y0ra6bBeZVv6icCbrbwKWraFtU=;
	b=UfEpMK91310ZjVAxMmnzhK2E5PgM68bLCzKr9iVFR61KG+wspZKPp8/3m+d0CZta
	z0sZ3g+XTrnDXifPCfe4KZ71tgTipPNd4WrTER/4gp7o4K60mSqJyKT8DPy4IqVyOWU
	USPXUiObut4CdRs/wH2Q4i84w5UpIFoH5dSpHU8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646475684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=USk9NyO6I5+gp/tV5Y0ra6bBeZVv6icCbrbwKWraFtU=;
	b=hLAbLDdmqjDnljZm4dIs+ZFWoLvbUkBWjWkP6VIWaJUYKY5qV6iNBgi9hgxNmOnT
	CDThQl1AQyvRExgXmJlqfpQVIHpSTKoAXcCEf+hqjStJcIZ229aJSNdJMWi4hjEwSHB
	DkRWfJux2VZ6yiThfkmqFsLUMiVHv8ZFhqp6B5Iw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f59992b8d-8ce7f0d7-6cac-4cc5-8570-1ab18249328e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7a11535bed34b1072139da632a80c827a3cef630ff773b0881e045704a2c6e8
Date: Sat, 5 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646475684
