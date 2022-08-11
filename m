Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD29198
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660195252;
	h=To:Subject:From:Message-Id:Date;
	bh=uhM28RmO5tNsxFBOfkeufyiJwAEZ31RyTTDTIhNxMzQ=;
	b=bjqQpnZUSRRTHc5ODEttb83MQDK2UQLk2L+zcUBTg2uelHmYjeCuOQndK3LHCKLX
	zvFr2pxaQK6ppBuvP9reAfkOShWFyLrn7Qu7Cv175RQcrGPz0kek/+PvoVZRS5UAcwv
	Q4dwPO8FelCkG9OG+ZXH4jf8Wh6jXn1m3L4k6bEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660195252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uhM28RmO5tNsxFBOfkeufyiJwAEZ31RyTTDTIhNxMzQ=;
	b=Y0V2sdwnsmBR2S+C0+mW5c4oQmw1ESTy8fJQVwoCA1c06r2ux/6T4PUqtui0rzX6
	w0iutdpVUAaKmg688qOmmxO6gZQzI0DIYryx5q6MEEf5SVv51KabeeH/5MxGiMvWzV4
	bv3ZZpm9Ev6+k6pzalx3R+Lqn5TDekf12nG0i2lk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828b592973-cedb60b8-44a8-44f6-a538-e16df5d04ba7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d25b2d69e746872104f334c22279b974bab3be49151853cb2eb8ae2caad131dc
Date: Thu, 11 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660195252
