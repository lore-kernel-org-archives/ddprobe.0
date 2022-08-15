Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70461103
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660588854;
	h=To:Subject:From:Message-Id:Date;
	bh=+Wp9QiZnCok9Mbf90GkMPKU9ytB8YXvtjfqpMqRsPSE=;
	b=if7/f/B928XJyVb6GpYvK+RbHy1Q3KthvuivYuFvXYdFT5vIYFcaZeSrhaP5W1qf
	lHvV3UMbvyErg80/7fQwmja2I2Lx6T9T36dh5vfYUXX1QUCZtvseD+pktONlO3W0WMG
	yoSNXWW+QUU9oSyVP16Iq2hCnWlZBE9+8UpHinbg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660588854;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Wp9QiZnCok9Mbf90GkMPKU9ytB8YXvtjfqpMqRsPSE=;
	b=WBA5xCEoAhPpU3t9XWMaTyJ1hh+RzktFOZdp9jnC7ZhPyj8+XjUKl8pW4pPclGuj
	o6l0tPn2meV4KWzjGrTcULhzpGYg5hzA7A9Kvbvr/+msPJJgTeN57sPrhC/vjWL6+/2
	uhlyEOAoYNUwgkqLMX+WdOsA8jIFv0/8w8ULs0UE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a2cf05c5-07c214db-c085-49bd-882a-77d885f07923-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae3510ab1dc1d7a75706d618c2c74e4db2dfc8674635109d16c4e58272f8a834
Date: Mon, 15 Aug 2022 18:40:54 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660588852
