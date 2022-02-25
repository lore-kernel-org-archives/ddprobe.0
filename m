Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929342916
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645825284;
	h=To:Subject:From:Message-Id:Date;
	bh=HdCsWUp4WZ8bmV+i+NPSXNk53n3fzh3CZXh41o/lCZg=;
	b=YBXF6VQudJvpkU6ldaNErtqUSCFxcdJyXjxosD4oeFDBPlCXolvUUTRumbGVFFl+
	kD2utIdYJ0ocNvovjKYWem9SegX+JvcIu9aXQ2F+ylEWL9sajbmTkRqMZx/aMoxIYno
	6uC/vYSUhAk/YZAQJ4866SlBJezHs6FVsB4W0dDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645825284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HdCsWUp4WZ8bmV+i+NPSXNk53n3fzh3CZXh41o/lCZg=;
	b=dsqT6d0EdDGUDMLPLNuZ7dGS/CdhyCx192UVwamF0fhgKu8joK6oK+QkcG1WV+20
	VKv6mwwza4dnkkf3NMiIHYGLDAOW/xtEQj+fV6rwlW6BMG6BO4VkSS4MYYrpKWGgnAd
	xFLhWvFxidVYpB0O7Ar7GjIjhu0HBHHBZrQYlHmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32d4da62-b0e94650-8ebc-4edc-bff2-ba63838a3950-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9465c6d968f14c562982c17d6fc9e4d24fdb0f37282124b93ed18d1442b01a1f
Date: Fri, 25 Feb 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645825284
