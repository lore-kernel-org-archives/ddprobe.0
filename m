Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667901391
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 09:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648027584;
	h=To:Subject:From:Message-Id:Date;
	bh=VgSg34R29pElMPvYsEjtTHsDld+L+LI4ABMoKFF18nY=;
	b=CIV5ms0nZERBk+HHI8H1mWOyaxqnwYjzpwdJ2aBJvUAHbBmNkX6Jwce8MYDrTx/E
	XKkJX94atQ480BM1f6o9DOWpz1JXKzlqFPk12JuJdq4XGQeF2IwwqCiRma9kmbR5hRI
	ei48u4zcfK+VaeRAVMJMTns5AcUMIauUYlJVtD2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648027584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VgSg34R29pElMPvYsEjtTHsDld+L+LI4ABMoKFF18nY=;
	b=ANuvXXdbjfuB8zD39bukFDc5y0/72BNgOHjxK0nw3ZQL0wVuwezQdAneKRSGSwt0
	jE0t3z6G4TKGqBTkqKnPGdNwlUfmrcmvMW0toGdGV/QWzW0eaRaghPLR4w0lsANRS/3
	RAu8WElD8NW6N+PCQAG0Geo8DVlgSamE1rwDB438=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb61948e7-b8d6ba3c-1f5c-4cda-a989-c2b54f1f7bb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e966b03b5d44513c7d61350909b0fa7594eb4a7eaeea4a4ca75bed3519ce747
Date: Wed, 23 Mar 2022 09:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648027584
