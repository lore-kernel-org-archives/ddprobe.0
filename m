Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7EE1FC1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A0A0C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669267854;
	bh=1cYiCi0m4Fcq2vSjuleIu8ICvxTpKZG7geu5/Y1vrTg=;
	h=To:Subject:From:Date:From;
	b=sq7Xh/IaP5KqEWc80NOAoHPVz5lFmpgwhoiB3U9is8tSamLxRewmk1XmGyjZl0xMf
	 nKx0A9Xgog1zh0FN05labjtZMpm68lF9VDwFo39QAWLCTaCf+BGEzoAQfjoUOYk5BS
	 4tzT7lDwgAI0K+xXaoxBC/AOk9OPdn33B6pxL4EzAkrB0dvl4s7pJRf5z5e4DsUHjI
	 A332LcZzOr0RClOnixWXn/oCcca5M1szj/3L44buptsg2ZcAX1WRivbpErYVjPZTb3
	 NApmpVGFOpMR+henEst0aDf8g6X7cVrnc2MIWNrSBpAC4g4zrPItDExXrLlVAFHVb9
	 C4RBRxzUY6ZLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A92C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166926785434.12795.6808709889758591973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efad6c6c7b3af412e922d0579f133e83bf739a74a73017e719a9d51c53fe299d
Date: Thu, 24 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669267854
