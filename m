Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA827480
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67ACEC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670012454;
	bh=O2OOCXRYUmEvqDqmj08cBSwiwuvVnScYiInIpIb7L1Q=;
	h=To:Subject:From:Date:From;
	b=jgOU9BcZZPLcL+I10/KgRjoKVGeMOu1gzSQxebhh1Xf5aiM84mu3voaxmRREKeT9S
	 IbkFlyxUaLzK3i+MVkmGfkmFl0eNi5D4OJmTt47Np6/f6ddKcN80IxWCM0g+5e/plN
	 4vKPe9FZ7cmCHtN3FMQRvnjDkGc0VkW+3VaMn0QK5FkFgzVuFgr1tOJQNHbBC1zZtJ
	 7MGq/PMJ2tYmF6OYBCfx/Hc1bE79VDxSMKV0FtUXXhKo7X7oTXMVugosX02WUIA7bE
	 jCEjWLdvBFvGSY9ifF9fC+WbexYwuGewUpatmYy1mQHXbW/Pk/S1iH8M7pnIV1A61z
	 SMVvEDGONDGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53068C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001245433.6610.6132072212883803427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c869ad96e9a0130399bbb7dcd7a849e0ee7c1149d4384baf82f1454ac521fa
Date: Fri, 02 Dec 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670012454
