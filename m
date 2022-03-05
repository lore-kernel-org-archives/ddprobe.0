Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657006AAD
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646508984;
	h=To:Subject:From:Message-Id:Date;
	bh=82kRWEDA5wb8Qb3Le/e9U7/7xndupOiuz1c+TA3/xKk=;
	b=GeCL1qv6n2FRGiMhYdQ+64u9EGKlKdNHbRl+HTkfu78Eu8jTbkpBuPHXFHUygmne
	oxTO7dYa39ROVpS9XD7TQqwUou9eU5U9baGLR+CQwn6GBXsQSsxiPImgs8KmpDV0r8r
	o8ZH+W3HRw3pc+MCivctUKAXwFEmDILU/QuraSl0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646508984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=82kRWEDA5wb8Qb3Le/e9U7/7xndupOiuz1c+TA3/xKk=;
	b=l7LxwgpvR4Cmkbu3csSTShAWziYjA5SOgKiS2v5bCgQ/VyZG+6Q9qX1RNaMvJZIu
	peQO54EqRZaAEE0aj9yFCE8On2GKCKi5oU+wxAfkG02LiIR10bIPJ+707CSHpNCPfzD
	RSR5pwBXgULJLN1G+HhVtfJA2o2KLnSnqedMQbQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b9549a3-50e8e36a-fb8b-41c2-b74e-b2aee98fd7c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 463ae505c619b7112a42078f52c26067291aeba0ce6dc71b548a5343c4900d2e
Date: Sat, 5 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646508984
