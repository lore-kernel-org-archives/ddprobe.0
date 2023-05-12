Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E647F0
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 11:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CBEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 11:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683889505;
	bh=NKnlJ+w0BLrddMKvKbap8F47J7JzIjdKQSpJUsCWTQc=;
	h=To:Subject:From:Date:From;
	b=LXT3CrTLjRubLNGSAAxAFgeC63C4VHe/UbWWHiTSWHuCROPO9SHFJiOkvJYIC/Rod
	 et9sh3qdhFWnihTUWasY++eDeN5pZhOjuGucbnmQymrOXt0Dx6oslWa1HYvn5jVViC
	 UIKI0ScGWXhM9R2aDQuHgn0u8dXrTTQJfIRSapu0xw6RjAzybvMUcswz6/Zif6PVvG
	 ljRMfn2sFJ7kgR0/PAeFd9/DiILnQ94STUP3YTwsO6m7ikLeNfpOulkXZI4YFC6rSw
	 FJMFjSlne3DQEdByHhNrpsQdJi3zcJN6qQNSMOCUouJJe4JLQlykKKgL/i2ynz+7+2
	 dlTV+1bTdTFpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0DBEC77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 11:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168388950578.1754.18232734345151288579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28b08a1601ff586f3e08efa398fbe0908eaa9723cf18ed69ec202d07ba65d25
Date: Fri, 12 May 2023 11:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683889505
