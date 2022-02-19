Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF0E5383
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645270584;
	h=To:Subject:From:Message-Id:Date;
	bh=+y0KGL3jgZOYaMLaV8eYzPcDm/0l26Decq2GEDx1Hz4=;
	b=Twyx6SJdd7dPt5LC9RYw8mkuc9wIvCBGgdI6TD0y5DmlEwPUD5LbZbNZJLwP200v
	XiAy/jhQUNroPr0Hj1+/y46PTfK/4uWETs+uPi//zX3wqRSbM0Z2I+DQC1rATkuuQDd
	xrSlo4UgweXrFrw0IbF01/XeacCDVWm0Li4XOX4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645270584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+y0KGL3jgZOYaMLaV8eYzPcDm/0l26Decq2GEDx1Hz4=;
	b=CXEcIIr5a+jiUL5VbRF1BEz/g1O83DTP11ltHhD+uSLh+9W5Ab5RbHhVtPpS3puj
	Bd7C96dmiABVZDxTY8r0YrNUDwap9D7He5eOiBl07ZPq6X7ywo2NhFmhqA4JhiUGbBG
	++t8mpAAELjp3nL5OHIwGgghbSX3ZzKi5HmH5FmE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11c4cdf8-c7fcf6ab-b1c6-44c2-8d63-551998c17300-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e9a0081cbf702c3c09e9d8dab327364860e302b8fa969b7f18019f2d079d149
Date: Sat, 19 Feb 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645270584
