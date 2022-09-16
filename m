Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9FA85CBE
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C8FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663347053;
	bh=abG6NobOGAYU3zMjkqt/YNwCNkoxjJqlmwNaN8IEFwY=;
	h=To:Subject:From:Date:From;
	b=aWRK2hLLjXVcl34NBfQl4smAr8UJzJRUXQovp5PPG1TLKM0nFBUIifBlNIjCaHwSO
	 pvImXmF3CmHJURJmTD8b16rxhv3hf2xVIPkd2Zb04LZJnUzdEocVBgfG7M6HfNlNqj
	 bEbnlmZ0b5EoGVmgNNTwiuBX2e49de+QhzvospF8tBKjc55+pT+bICXMf1L9Z2iSlB
	 a9LUd3PkXMUL9IXaR2LopfBjRDYOkKFDgSjlCruLHkZ5V4S0uP6B+IG7ediRgAW7R6
	 EgPilN6pgRUzEleCuIUeJYWWaG839N/ixkU8hX5kKDEvqTa9ILKPSPdrLZf6+f8t1M
	 PruO23lpLJXFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A75ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334705338.30244.5299335501979125385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8335143cd2c8f9e401b939eab772a6c7b6c702900d0bc11d5212f29aa68531b5
Date: Fri, 16 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663347053
