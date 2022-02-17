Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B613D61
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645119385;
	h=To:Subject:From:Message-Id:Date;
	bh=HGJ5+s9MlvKtE2GsgIp0bz9Odtse+W4DpK5fTr/AHzQ=;
	b=LE4aB8gB3XL9wo1UG6ixyKr96mTFwPYjfvprmBviJu2tMcOSSqc6S+Xl+xY9a2fS
	iG2PxhwDER/w3pGMq0XgcpwXtrYLVEt7cRj6YT9Qg12nP1j1Z4JG4Jd79krBa6haX+T
	jQOwAZghEczl9PwNi5cuFkVt5lkg+X7JpYoWpTic=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645119385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HGJ5+s9MlvKtE2GsgIp0bz9Odtse+W4DpK5fTr/AHzQ=;
	b=dqfr0Pay/W+/ZYgCPA3Oaog5KEgXMyqfAS6y6gztdWZLobe9vf2UInUCrDuFm9VR
	1H5YMAyVlBmFAs/300zNELwDS6cUJBcY/3FpP3bVxSKwUV16wrQs60vWZk9TxIPGukr
	X0R/QJsLWnm2+6fnGxqlAgCJxeEaVhoj7WjHEJIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f08c1acbf-7bfee01d-383b-44bf-87bc-259b04d44e28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9eb188c4ac68678cb3b39b5ba7b1036bcd809056b0e7e735a83adac12694b4d0
Date: Thu, 17 Feb 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645119384
