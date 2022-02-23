Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D6264E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 01:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645580484;
	h=To:Subject:From:Message-Id:Date;
	bh=i8u8ZDJdMkKml213VhQI8N7AKUpAPNMzv3KfAX6F4U4=;
	b=QFLjOaGrrkopPaiuJOA3UFwtdsaWuHTRw9OF5cOFKITxvzTI2IWs5Vm4ebXZNTpk
	u7IoqJoGqnBlnEhB5FQMjkiNr9kHwJ1HD45joEDvOAr+z/iLtTDMoopClj4iObB2P0i
	kqWLQe+c6Lnz9lIxkAERq4ATdudRJGw31yt2bTqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645580484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i8u8ZDJdMkKml213VhQI8N7AKUpAPNMzv3KfAX6F4U4=;
	b=RxHmgqvojybAY7sPAvWCsRU9ffja8hU47oy6Dg+OMb5WO/1a7oO1M6fQ0KBBKWrH
	lXbLCFcO7Yy3uFbV1qDaVU9dSmHawkpXzHu3olGp6EwDrNM6ZwV0T97QGlAN0EawSou
	CFmnXr4jKFQLiMFy2RHQBTb6grEmucdOsyNK7cxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f243d8093-359d53ca-ff18-4e9b-9ecf-b7c71202b8b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4de0c4ebead5b5583158b1f88f49852e3df0c97c9af3fd747e30994adb465c3d
Date: Wed, 23 Feb 2022 01:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645580484
