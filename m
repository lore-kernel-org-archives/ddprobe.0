Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B5A38FF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645909884;
	h=To:Subject:From:Message-Id:Date;
	bh=DYsVKY2E5qR3FiDt3slfyFwqgxo6NirWE22bmmY7yZM=;
	b=OQoECxcnup447xMcjbdKPjXjovx3+ZZJSflKeZgPjGtWFHqpwIovYjYI6Z0dgKtN
	07tCZnNZK7RAsMI9zh4oQ7/l2eZ68MRSN++oAnNUXNc1oo3DcPCPmxQ2UsnwEqnyBq2
	+xg5bOGFVimQVsvLwDR2hXVpUwLnorXmo8yvR078=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645909884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DYsVKY2E5qR3FiDt3slfyFwqgxo6NirWE22bmmY7yZM=;
	b=T5t5TPMbUgjHNjb/r+JDVNnzlT8s99ak+FTOlGwHmEOA8tNgpwRTrvX176gyGwcE
	pN32nnmArzFC8Q2b5znuvRPccymymW9L+GioIwpjqoPI/arNpTnEaR81ftbZ6pMMlbM
	VPD4ZJJT2zo2kXu3mjtlPvRqJ7uRz8KXwWsahnC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f37dfbf58-f822150c-db63-4b79-bdd8-55c1afc9cd2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8685650f314fbf4536c879a200e8a53ffa9dae1b9de3e0ec8c5b92c2e3461216
Date: Sat, 26 Feb 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645909884
