Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4D9258E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647111384;
	h=To:Subject:From:Message-Id:Date;
	bh=F3AA+E79HAzOHRvihQQ/sCapbYcQ8I9xwPu2XaC+jvI=;
	b=l9QPInFVECE2Lt379w1hu2ZHuw2W8R/ksUUG7qs5uEop14GHNbZGCUDJ6RYe5h2G
	1Wv1JlQe8PG2Orm4v9YA7eOSxV43GBDEz7SGg6tpah2PIcayALCw/XJqEmMnD1GLJF+
	9j6rMCrrAVlmIm9jkzdNg83t8byTdO4DsyCIME3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647111384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F3AA+E79HAzOHRvihQQ/sCapbYcQ8I9xwPu2XaC+jvI=;
	b=h0fcnBFgrPwS155YKzpenfM05f2IkC+Ig5moewftcXAWccB8SOaXw8Cd2t3c7suU
	mNzc2akKHUSp9BDb1LVIx91hk5/QeZIuvKvBDZqWYQb12mOt9jTfu5Wwl/9KhdgDTz7
	TYR9sW+pJR40zgJk6y1v/Crljt+w6TmlE5kDP4/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f7d2e99-97460f30-ce75-45d7-894c-001e72b131e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae573ce80f8f3ad27a0c6b0a67e7e6b54cd860707f2c4979c253481f3ca6cb03
Date: Sat, 12 Mar 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647111384
