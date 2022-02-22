Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA0F866CF
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645557085;
	h=To:Subject:From:Message-Id:Date;
	bh=uU0jtTFC4RZCjilQB9pAIBhK1LULta8ymSGShnI/jPQ=;
	b=c4de6gc6GcMYp2/nvEhTNCLUryoQJiHN91Qw4sW8wJ5CstDdpy49301p3ZEBKPgu
	Fb6hUhlErkCDk/yQQUChn8M1ytBBa5llBCYTTh5ZO0KLZ/dANpmxm6munMNzXqdJmiU
	lrMB+MkxFjo0c2LwPDy/IQSTp2dYQewlcbP6mLTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645557085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uU0jtTFC4RZCjilQB9pAIBhK1LULta8ymSGShnI/jPQ=;
	b=ZGYyyu68ryn+xtYNMe0vWSIKVUTBis5l2M1Q1QvTkGz+gHtFrcJt1WSx5mT0wL85
	LrnM+N7agC/Nf2yJ3nA5gHZVkj1Y+GFMryDShCD46T6wX5TAKF5jzlmcAOuT2NCtx+p
	hvTrFWb6gA17mJY34j001vAZDKtVqPWLrzZfCuJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22d872c2-6da975ad-65e8-4db7-9fec-4cd1638ccc2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbc68fb159a74d3b584ab04fb4069464400f0f31d78779c1c75bd1756a6339d9
Date: Tue, 22 Feb 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645557084
