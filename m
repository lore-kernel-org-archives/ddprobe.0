Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90369182
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660108853;
	h=To:Subject:From:Message-Id:Date;
	bh=6UFtkzl2f+WFqmw+3FtwAh67/1WCZfvHQK7bPuK8fXE=;
	b=j/YngM1hWTvtjAWXtZAuahEBAAi1kh/RymR2KEwyn52hFLqOQMDsHhvZE00Cupwh
	ret0i5LUKvUMdv9xeJ57dyZq433yX3kMmzFX2YRmn9gaOHGZFNps+gxiRnvrVhi1TVX
	SUB475tELkIZka7mAci/fofUNw2FRQoLY9yrqgh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660108853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6UFtkzl2f+WFqmw+3FtwAh67/1WCZfvHQK7bPuK8fXE=;
	b=IYv8S5sxrQmgU8cmFQyN1bNZmR6toKmeocrr4ZotbdYuBY+c9pq7ajcCFkYUOHlR
	kwxQxYLqwesPwOz7942/dDBGYoWqlrJsGi0DKP5+uNmnrFHgPfK+7Vh02ysIm82/WP0
	NJzL8FnsuaLra5SYbA/AxLiKxssT4x69G6DbP724=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828632cd7b-ecf7f2bb-5723-4f92-8a96-6f13fdd6fed4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17529644e32118b6a4159954a76add6d2fd9c426916ce69b83b3c3c3cea7cc54
Date: Wed, 10 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660108852
