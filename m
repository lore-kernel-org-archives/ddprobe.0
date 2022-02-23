Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD9F64E
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 01:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645578085;
	h=To:Subject:From:Message-Id:Date;
	bh=BB6mVFIb6G/Uh2RvxXC8XxG0KqUGiCP5zO1K6eXI9+A=;
	b=Ze5w/VMdoX1mKks2a4eq9aG5X0zrxOy0qQLJCLXGfpeRcrHmwm6X4GGMYJSpQy0o
	Kp7LtbU7ZYh5pdjRnco5Xi3Js5EpMbrkohCqUZLLpyceEYfsbWV3u0XRdOJ6EVE8eBR
	BQygB9stPCA+B+L04HhDkZOhiSfrhBoBmcEuQ3+4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645578085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BB6mVFIb6G/Uh2RvxXC8XxG0KqUGiCP5zO1K6eXI9+A=;
	b=HdesfHYw9gMLMi6h3Xg7gWKpcTLQtQ0WwuyZXlMcfvZbncJ3kD09vx26wxf9JGcO
	IYgAVWo5cUw2TGhebjc1v+MgoE13XzjjL0AAPf1bn58dwhzr7jxzdDBrgQq6fB40vjw
	T3bdpo3Z0fHKbyxvzoGK00gOTlqDxoEx+CC/++3c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2418e20e-56ea4a04-011d-4f02-bcac-c2cccfb8e73e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bafdd0161ca47a4587102f65fd00a8b6c2c5db0abd5b357224681af474d09f8e
Date: Wed, 23 Feb 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645578084
