Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8304C7B
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646007384;
	h=To:Subject:From:Message-Id:Date;
	bh=VSaOGOkvxIAef8i+Zb66XpJwO5Z8NNySE6PbxBotRkw=;
	b=SAmiUdxdOiCILKzc7NRkAYVpRzK0/ljcaMAW4kAd6JxRjEEdL5ombi+teUVZfz56
	oLEweOLB+zDnw2EF8yVpPl3qOs4bH8gBfL1XN31bp3b1n3fZduiqTVTn4mRW5V46+Pb
	lTN7pSoaHp7V+SOGrY2XOCG9s4Mva5rqlHtwvdfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646007384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VSaOGOkvxIAef8i+Zb66XpJwO5Z8NNySE6PbxBotRkw=;
	b=c6dJFztPTLbqMfb9jWeKtc2VRI2WJV+Knpqsqgv+RarwzweAtS6gj++UmGErxFzn
	qL2TWhkna6H6MfUSwMpyKp8vjZ+E+xW+Z6vdhcpiWH/otwlTaDnToLCt6W4tekAZfrR
	UGzxkC045osQGTrrq0FN6RgrMTxJlVwgYkMj4QVM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3daf7ad3-d3f0525e-b4c4-4d84-bf6f-2573d810cd58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 592a378c3e687152815ad9ebd445e7832deffe949814a0564558ab51b90dca9b
Date: Mon, 28 Feb 2022 00:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646007384
