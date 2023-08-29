Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 653BB14AAF
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 21:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4575C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693345448;
	bh=CJ7mmyTQqxEiqrFReQ86UDYJRSCPYpEEobdny/AY4ZI=;
	h=To:Subject:From:Date:From;
	b=SUbDjsDtXG44tGCDcVjalsF0XGMFidWaIx1humZS2AAu3quCVeJSo+xz6VWigbgul
	 f+KE5Ro9CngheyfeVGHV76tQqvn2Qzq+7Oy5K9Fl/3BgJnxKksVYU4vCfRn8zVILg+
	 EhaidxC0KNbHoH0uEtxwrJKgfR5cGG31s4ycrvttMJnek2wJt4WjJT3QHc/3t2EtZw
	 xBap8O72AS0++vpISzyAdaC9Ok6dhtQG92ZA9HNdQO13Rj/wEZvbl+yGvM+Uso9yrH
	 paRpDTC201u1OCsS4ho/VSv/6btUou12Wn5qnxg/5ZOwf6vDC6dOzSNR3wcNTcx98m
	 nhy6FDULtilew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43ABC83F12
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 21:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169334544866.31328.3567484906504632106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2170abfdb38938aa350f56c5f3bc8d6391591bb0d336bceb8718ac3a186b7497
Date: Tue, 29 Aug 2023 21:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693345448
