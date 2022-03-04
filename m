Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721C8C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646409984;
	h=To:Subject:From:Message-Id:Date;
	bh=xoBpeBSSYzqXxIk7anUAG0OhbRQzeOwzQv+fcWB+zPY=;
	b=lUE2Qk37M65qaXLikh1fzgz7pgVLLpwP2yFD6dzMQ6VbQoYHCGmV0sqmQxsp99qC
	n51FC5Nr1nHprg4pH6G7Dqe1UiKAltqP8HqwGbulDcpm6kuo2SJ9aNfTRqIuYsFLLEp
	GQJ9PMK30LfjJ6kcJBsKcOuL4QGfEAgXWvOlzp8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646409984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xoBpeBSSYzqXxIk7anUAG0OhbRQzeOwzQv+fcWB+zPY=;
	b=jf83K05xtzpBRp26sfwJmlx1Kk984UPnVMO2K2SLKs6gSQQg0KBplGjGBw1FNYCO
	33VSsSRV5tT/ZurT96rmq6J0FmlQts912aQtLkSJwPANPeB1sJionJRmtSvqzhllQ40
	PernyyQvbHk2LXan60g0f3bUMvE0LxIdul1CicrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55aeaaeb-253a3e88-93f7-431a-afb1-5ba4ca99d025-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d38c24e84532a46cbe8d538d6432e230ac3b893aa026fb0d15ba41fb743144a2
Date: Fri, 4 Mar 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646409984
