Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753566AAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646434284;
	h=To:Subject:From:Message-Id:Date;
	bh=uPfMulxMI5ZMCJ5EdREar1gENt4ThKvdXNsxs5x9EcU=;
	b=foE6ww15ZMFW6IudNlsyAWigtFj+9JzaMXjkxjVg3rbob4yAoudsNLua14d5a1WK
	RUcxekdJWfoimDBa6LyZoz3X2YIbih1qxhivKCvUw5jpX6AFLFFbUYn0QwE92CkMYF0
	irRiQwHI2kEUCjIL0oD+00P0n908bVavvfA7Gssw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646434284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uPfMulxMI5ZMCJ5EdREar1gENt4ThKvdXNsxs5x9EcU=;
	b=UKzw+Lwr6wxk6lrK/3FKQjuCjf4Mqm1xlwtTmWN8aJMhPbD/vI6o4fx74HGUghFd
	qP1ivVdYRRdr/2ZWJUlhTFD1EAadexw3Q3kFTSRdYCElCHreOaD55HjagKbfIw118sj
	1Kp8WJhENMRlBvM8WrKvxc4nYOz3kkGLtuOybbkE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f572174eb-5472d3e0-7699-4499-b334-5ba1320b6129-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2aa723dbf6c659e876bb1fadf8fec9d322041d4c416b466d71af7e75df194c5a
Date: Fri, 4 Mar 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646434284
