Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BF90365
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 12:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644755454;
	h=To:Subject:From:Message-Id:Date;
	bh=cRPov+wSrVo3NStCgvPfYG9RpWiCtoROkUjkp2MQIzQ=;
	b=NJDacWDysr1zWT5HuguW+Xj4ftWJzGKQzi7dgumdJp51SUZ9WmnUyABDBTAFXx8k
	6gyk+XFXAdhDRSWlQH45a4drr0ycNsgY0MYHxoZ7w5YfByE1MTdu4Tvrb8dWoCvE48U
	4xgTYXkZzUab+d1UBVPVg0/DdIWZIfc8UkFm7vxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644755454;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cRPov+wSrVo3NStCgvPfYG9RpWiCtoROkUjkp2MQIzQ=;
	b=b/fFZfdbvRWSZFjUbxdsbtuAFay4eyS3d6LCZDpxh6M5eItRuyf8dslbZZZObXkB
	mYWwAa1WTD6vTj9g5d+RtXGfRZ9BUi2VIqujwgkkARKO6eLCvqvc+OpiYbu4nvEoLAr
	DQzfCfFbxYbkz72IqysFh8z6Af3K8GfxmwgO2wSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef3108b60-cb09df67-b390-4ad1-bd3f-021da40bda65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00e3c945ecb9d8c26c162ce8a20b94ff91990132630e17fc8032ec1c2c26177a
Date: Sun, 13 Feb 2022 12:30:54 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644755454
