Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCA533D5
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0684EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674839586;
	bh=GBKuOlxdEYDeq/DZ0cIXl+6Ed8yhLnBw9tRySxu+iIw=;
	h=To:Subject:From:Date:From;
	b=aW8/1PEnuwMOZpxQEUOBF14dGbKQj7wGYFiEuQCfhIXp5dyp2JHuU75TXvOJTSUu0
	 KW8731o2YQoi2ai2PzBKyXTc23nZ9f1Gs6Tkmu7HElZ6YPUPQDCu9r1/bhVDszUinq
	 dOhHRTxX9ty6l+pABVVdMV2GC+1sKHWdUbJiabEmdcjH7t0tlNSSdAllfJnMAMLyLU
	 J1uwfat0kEqBPFWZTX9VGXwW2bRaNoyIfw2DsxmkdIsCfvZo81hUtHM3fRW/eoG2aC
	 VlyK7bkAYsosHnEVJPSeHqmyZTYZGgA2zLPk0Xdpm15QjQNoNJZ7Oxl7wCcbgsz5m3
	 jJzX5e8xo0wwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8D04C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 17:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167483958586.24353.13208158189767214552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e333474dbd71e1fac711a193227086452619d96565a4244510343b9fd23edf6
Date: Fri, 27 Jan 2023 17:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674839585
