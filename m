Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289277A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645657885;
	h=To:Subject:From:Message-Id:Date;
	bh=GRjsP8FTyYqnEAlvwAgx4JyTddQ6KCTzhpPHcCcBspY=;
	b=ByA37xQsA8f5WsAt3ZFktkcA88JUmJ61MATzFwLH3qHlga60ch4XMucemIRjY46k
	4SWKttaKjOAq+b1FI9XrA1AZOdsbO+8p19uV12giDCFWJApSjd0yfws4yF7y0jznmkA
	KJRQ7Pi99+3fm5ET/WrRKA6mpb3orE5HjUi5uF14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645657885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GRjsP8FTyYqnEAlvwAgx4JyTddQ6KCTzhpPHcCcBspY=;
	b=dgVlcs9S6ebFgtqBTBA0B3V/rOi74y9t04sji94u7ZfihaFZWTGhUuo/WstXQ/cg
	y7E4rZepm7eglxlPRESQ+NyAH3sAwUO5IH4TD0bMsqb5jvTqMy4bIOSBv1oD4a/qC07
	Y9/QDasJ0AVouG5f2wgLKcDceOSLXz/ZGzu6YXyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28da88d4-d9149c4d-81c5-4426-b230-b99c994b726e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 082ec217da4537cd0148eb8fb425941887a4fe3d3ad4f74597acd3916eb9bb5b
Date: Wed, 23 Feb 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645657884
