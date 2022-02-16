Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B60C38C0
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 22:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645051585;
	h=To:Subject:From:Message-Id:Date;
	bh=K6Je/aX+oMhorXVZKo2MKBkvOdmqsjbZmNroc1YR+5k=;
	b=BvuLi50kMIn1xld4aN7XF4givoYChHywuX2PXnOH1pfNROoNJHDNUL9DPR2QOUr7
	VfqWVEhkXgPu43EfKrclfu59kS6UDj6V5/DCOMg3UkLPbZa6T6g9rk2uEV0WkSG9spT
	ud5yBAzkLYuGQxPsCHJWeNciAYM0ijsszzY4W1ps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645051585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K6Je/aX+oMhorXVZKo2MKBkvOdmqsjbZmNroc1YR+5k=;
	b=ey072V8f3OMcTIFcz8XxlNY8Hg8/YKyYo9zkg8O17VVeY/JBGbrI5N42YKNmfxUB
	srXrQ41AXUA9xy7O1XWa0ibNdfKdDN9NG8SVU8HZOU0AKcgoBqXoBJBd98qBPz2qm1s
	dyMw4KxUuLv54kNCJaxYmQh6GJRQiaOu7I6Lkfs8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04b7212c-1f9288c7-8c9e-4f70-b4bf-3f875a4ceac3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00f44151a6acf43009fe9108f23493a6db9551053016af585c244732318b914f
Date: Wed, 16 Feb 2022 22:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645051584
