Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB057A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 13:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644672005;
	h=To:Subject:From:Message-Id:Date;
	bh=hzbZ+l91ap+GxOhVyVkCjxZ69t3xnOfXsa7bE0NHmNw=;
	b=LM0hp6qwe5mDS0RjdE2/d+9+XYY2UncIn5bjrhkxkMFMl1mWVj+Yl196BXiSyioS
	L4/WAkLMDaKYFH/8vlzdRNCE5SofB7H3/+ZrY2b5zbg4yGfQ2XLFFmJYNY5Hi7HOa3S
	UvPq9vH+RdYpR3NhToS8nQmib6dme+uznDodu90w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644672005;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hzbZ+l91ap+GxOhVyVkCjxZ69t3xnOfXsa7bE0NHmNw=;
	b=W29eyjhRrhBowlqygwnQwdATCR+LMINQyWo81WtrOX2eh+ZRgFr/wC/JCKD0vDfs
	HS/JyUBqW2HQxVHf7IUYk7dQ7cuMZXzypRCBax7cihb69TtAdP1bRRz5J42mnVdoyQe
	ov5dJhXMPJw9BHTMBTXII/g1dPh4sqr606ZJDHw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eee1734b6-9ce2d46c-b472-47a5-82f3-75fcaa0ee9a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7989afd0c1b2ec3bbf1e322cded1d9584db1cf45e6452997047f31b417dc67ac
Date: Sat, 12 Feb 2022 13:20:05 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644672005
