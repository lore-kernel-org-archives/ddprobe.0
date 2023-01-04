Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD74810
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8086DC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672829487;
	bh=pG5k7TwRzpIb5dDpocz3ziv/TTo+49lEJlbZuwT4aXM=;
	h=To:Subject:From:Date:From;
	b=IyUB7CJDjw2xC++CC5wro5oV07zVI/Bj7UuTG04pCNg/i/H4cGfcdig3PUn+ZkfW8
	 nRpIPgL9gX9OGy2HPqBbwXtrCse34ptWczI7fpOCu6T20+06LWPDASvQoLcKT18grj
	 T1q5SlLfmGOCstS4jw5In7CQIJ+z30Po4gzjvaXUSbDpm4UC5PRbpFu9wETK49YyHw
	 mLZtBovYG6UErTuAax/OfWtti5d2Qq66vEE0rHEAaJoanckDcuwvz4QEzx8NMXl0aW
	 z+TzKqsOebYYdAIl90ANqMqNmcKXC3v3abC+mV//jXq+CdEN0PHw4ZCT7IKxZz3lhE
	 G5jJouL3cnjnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6286AC46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282948739.17717.11293192243480996757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8584100e47809cb8211cf8e5134dc80db4bfb9e6b93caf8c2a94e5719d5f9dbc
Date: Wed, 04 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672829487
