Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832B33212
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 22:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C6BC433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 22:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693866848;
	bh=NW7EfR4+3X2H6ryXnhTJ/bvxdBU74A6JrddQUkesFT4=;
	h=To:Subject:From:Date:From;
	b=rmWBFt9vC+v2smKCtw6qGRmbbJQ8bKuaPRY8C9DJCbHtaCsKFKZs23h2a80BKVDTv
	 hUb24hb+MN11PtgMik1q0mIwsOrF/Hsf9lO1w1cjGZQ2Cq5urw6SXcCU20qISgeTCS
	 7ziUDV8VrF3srCU348e490caT5IY3a1oh1CWBFx/VeN6t1QSkgbFsLfogW/QNu+DGA
	 GSCwZYiYjKMQmbEyl+6V++jCwo0r/l/02tHUd13ItWu8OitagT5dPsU6ajUlyjAqul
	 MyKAbAB+LKQk5XouIVNeSo+HD0ay6eWkxdXJNtJtOjANe2fotQjc3rHE1unkwUw7sF
	 2GX+NUaf8jKPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2CEBC83F2C
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 22:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169386684866.27531.8977970714282388641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e2c80e04e1985951db9703d084a7e1954b7ab243fece0befacc85639a355fa6
Date: Mon, 04 Sep 2023 22:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693866848
