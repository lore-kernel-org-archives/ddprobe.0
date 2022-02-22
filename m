Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795247B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645550185;
	h=To:Subject:From:Message-Id:Date;
	bh=0vDJfRqfg+V5sN7cQWzVfbrGiuocuqOZnZK/P+//B8M=;
	b=jdDjrciL+bZDl3jVgFH8dglRncObhTnELHzU5IQjX0vtqFR4KJMWsTPLpTxRFeJA
	gePg2/bN8ZIR9r897HY+9wdDXC/104FvkUo7cVz2ZVNqLUGtYI3K5mTDsed6M9pTNXn
	xH4n+mQNf5SejFmOjCN+x0KZfTQHnsSVwhdLEAj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645550185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0vDJfRqfg+V5sN7cQWzVfbrGiuocuqOZnZK/P+//B8M=;
	b=gmhnv9lXf2w5ktup1TxaqN3+vUBGV3J6iRUdOj4GM0LCQrTjgIU/r7I9H55aENTi
	vyFaXNbDkvUrAK+/+OtskqSJ8mSmkQJbqw2dRWIclG77ahQTfXrhlhZr8UbleYrjzGe
	EM8eJ38/0xEVA9HqlKJBz50H4wxFitg8j3119uN0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f226f2966-774c86aa-a437-4c70-9b18-9e10d81e98a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b1069705dd9529bb3b2acf49fd33d6e7aa4096758392f58d6a2ff109358fe02
Date: Tue, 22 Feb 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645550184
