Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CA6257A
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 845C5C433F1
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673881287;
	bh=Jmvxh2VWCuqv4ZHMZzMT2s878srnfPrnBwuk2Vj7qoM=;
	h=To:Subject:From:Date:From;
	b=l9iuwcVoINQRYQxWv62t5HJ6gTky/3QFd7qQKXKB7FoJL9kGdZ1OS7X/KedlL3t6l
	 1SkakEN0HtGtRoDH0MhUwAeTHAfDjrI0udV9036HnZXQJlEk5vLcj9WyR2S9FfT87d
	 RM4oF2IvHcEEM4pMcWGIcoOrgEmEPU7ztp3FUlk6m888epH8GKW2GtRAjaAqLzCQfL
	 FSduqo4yPlvGEOsDPm0ao3j+elO8G6B+O6HszmD7K50t576LHT5MVmy1QWutY2tUXu
	 6w/qPUxkEMzItQEpFX1Njqsxuc/sDK0RF5NIPTRAL70y6dx2t/Fm9krGExK5yXPCkV
	 btOAZf1VDx8mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FDFC63797
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167388128741.16012.7427035746819540145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbfb66fc384e475a539287779354ff3f78033dd40c25743169ead4b00eb1952
Date: Mon, 16 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673881287
