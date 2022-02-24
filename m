Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65958ED6
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645671684;
	h=To:Subject:From:Message-Id:Date;
	bh=BkO4aKAm1uLjZJVg+kbC2cQ3mpve8IM848GKEwObXX0=;
	b=BXvmTaamIgmxvGihPpWbQtFtmX1FswO5L9HCzY/HSByClkWuO2ZXz3ayU4czBjYW
	/+ZGO+inOYEos7XIq5M6FptfmIOhYEXao4VUCa4PDuBEYlUhmnrwHzc09wklqHqB9hD
	ZwbIjoJvUbghfLw/pESLpwnKk0qLVUNSZj7yUAzc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645671684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BkO4aKAm1uLjZJVg+kbC2cQ3mpve8IM848GKEwObXX0=;
	b=WHwxpPOgOjB8n7IVSGFYcs1wdQPDCufhlC+D5mKmyNHdauEPZiBsWpHiHSo81VI4
	p6BSzYQfK4qVbdrtEe1AS1jw1WNygiV7R5WwglT9Xw/jOdXREl6GiFSgbeAv9CkI/Br
	C1Gr0z0evDdOqDK2g+Y0U5An05+0fRjL1hXxBz3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29ad1ac5-c8b9c92a-67ea-4450-8c85-727c7b97b555-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaa376fba830d3688d835fa829c22d9e97c0fd09e5eb2428a82f3005e9162b65
Date: Thu, 24 Feb 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645671684
