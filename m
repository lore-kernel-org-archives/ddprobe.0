Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0BC2599
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645447584;
	h=To:Subject:From:Message-Id:Date;
	bh=AeVgBMUvHHZa2xfL+BFMVCO3N8rtbHXmcOHXpdhX44c=;
	b=DhrEVT7+sML3DyFvUrGGvIDD77+Ylq9iyfoX0yjAEk1C2e7hvk2QaAZXZJpdr37D
	rvmuKJhgT63lOJEuixoC8MFqk5VIgbqLcohbhAP2o+rga0BaGFTSPCUK9C+maQyCkIZ
	KTljNn1q8+kVqvFPgG3lOxhQZyCLOo/MZug6zWCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645447584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AeVgBMUvHHZa2xfL+BFMVCO3N8rtbHXmcOHXpdhX44c=;
	b=QusaZaN6Fx1yib5ywGbUskqu6JbxWJC1i1iLwD9//uZgU/CnL2xLH4SjCDy6wnaM
	zEFQHO41dF7jYDkLzFbetkioH3N3KXm1BCymQs6Fdn4SSOUzJlAou3MgzCElf5NdyvW
	JjxAiFWe66Ik0qduJjjMe4EZPzSDdml0onymxIXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1c519bec-6354db74-bb6d-4c74-96cd-23c84dfe2d4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 114716bb86a90641e3a8e493a4b93e32792ea1e3e1eccbe668cc128bfa0be5ff
Date: Mon, 21 Feb 2022 12:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645447584
