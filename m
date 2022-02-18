Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4AF538DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645154484;
	h=To:Subject:From:Message-Id:Date;
	bh=eX1yJl1ZqV00s/tBTEL3VvYXEWl4DTA/2zs6gAmDi+c=;
	b=URXFUv+qp+1sQI8F4Dl1Btu4Wf9jAMo5O459GkPrElwzN9vXqgIesZb0l2XTckO/
	V3NVzDEH0HY8ZS+xsdZr95qq0mgOzTT/fe8roaL1xQUHid5vuSVbQOUr8mFkYG/4ipo
	QQGIm7yVn2y7SWqrAJ6OJ0EYMEWhqCU8EnlY2SUU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645154484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eX1yJl1ZqV00s/tBTEL3VvYXEWl4DTA/2zs6gAmDi+c=;
	b=ZQy7bgw2KasCYgTHLM1hzc/sxp9lu8idZCbBvCbN1l8gEL0eA3VZQiaC0j2tk2+U
	2DTuGRrpEhiVkyQ94lS6B4QS/dH1zd8MsfA7JiydoF+NHidOOABAROfQQFc+11BvtsW
	BgJPm+c5G3KH6IWkgRp9lOlR1Xdu6LP/NPW/WFPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ad94256-228ea9c5-1f86-4503-b45d-13339e757025-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 565f1f81e4b0f6977baa6358004932ba9a7f82119de8e1801f48de2065dedd38
Date: Fri, 18 Feb 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645154484
