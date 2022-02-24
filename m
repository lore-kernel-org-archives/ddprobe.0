Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A337B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 17:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645723885;
	h=To:Subject:From:Message-Id:Date;
	bh=8g+iVSmzrVWkAzqEUxSwkx3pRUC6d+vDE84G62r3aes=;
	b=Ew5zZ6fjnx7qgiiNS4S8Xw5r7BEtNuwpDz2cWGgcGbAis5fiJME/EzQVa4ZXIk0L
	HSt60DvBGX2BmavdaRNsyn/rj8ESFhIpH97oQBssGkWH+GLg1xeQTpz16vZHaQv1Xcb
	sf0Oo03VNOdbv+mPZI1vgdhlv1q4rTWOOYD8zaYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645723885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8g+iVSmzrVWkAzqEUxSwkx3pRUC6d+vDE84G62r3aes=;
	b=c9PUy2A53Bwz9GZEVNc4+Wy/+Z79XQDhzjytZQ2sO5S3qBRuU35nz6jFnnKBSSiN
	PwhP7TvHSi1FmSAOR00OyIMbbSvyytyPwlxzqVSTFaYC/jmp+JjYduVLoha25u+Nia4
	C1Z/8RfoFUstXS4BCLYpHKETM5p5Pc+q5VKTwAs0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2cc99d7b-5ee54e78-792e-4af7-aa08-10c27c4d20c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a31218b90dc5f5dda03c18a46a7537d6d10086e5cbbea2c1cc784e4cef858280
Date: Thu, 24 Feb 2022 17:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645723884
