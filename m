Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8447C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 00:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1767BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 00:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682296326;
	bh=6N1XJeSe83a3k4jdiuqmNACPx2CkU+rAfGhyGsGAcHs=;
	h=To:Subject:From:Date:From;
	b=vP4DSiYxwAEprfBQ5BO7qsFL9tGj2SVDj67P+bfWmfNEAqHGB14dksQJMowarXBOA
	 Nq7dztPbV5jWrls2us7CYpNWYO3RMTNHhuRtfrath+BgXEi4ovGteslmGhyHJcnHX2
	 U+/0e6fgYvDtC2jK4Br6tb4apqcPF1y4C2+zU71yxMG+3T2doQv/osWJoG33XGU2mN
	 V+41IMpE6BKc+DjJHNPVT+sF+YDZQ3Oez4QSvwZ0KKGk46HgXPTC7DyEWPq5x9zZTj
	 7FJLNd7G/RWg490iTLxfKGlZ26ST5adouO+Y+cQFKqHzFcpLGrEjaDGkWuYBtmgp/D
	 28miKdlo6D3sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC946C6FD18
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 00:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168229632591.27111.6951087593304703348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841109106bc06a212d28e28f074685d27cdc46c2ec7d4998c665c24b6dab66a1
Date: Mon, 24 Apr 2023 00:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682296325
