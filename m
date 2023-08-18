Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01CBF46B0
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 22:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C843EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 22:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692397448;
	bh=7RiErnFC6Y03V0anW1q5kfLPF4RBGBwniIqIafomG2s=;
	h=To:Subject:From:Date:From;
	b=nsPwXWqh+QR+Lx1Z/rVujKxO9t7Kdyj2P6+k48vb09LQOU6wjhkGac2jM4uOeiLls
	 /MTjsiTs1LyzwswE6KeZ7A1tRi0N0u+vffHeJS6pDzp+qcD3Z/tpkrqdGfMfjBZDCN
	 qQKAAO4Z3bo2jRfKNgdXFkZlp8y36E2AQsG7I6pThedRyKd7A4SP9iGlWKxegu+DLG
	 lCDwjdibUdMcKLXzWJvKSQk5Z8pwyai5WqZaUJw68m1Uqi99+b65otYeVqbyMtTZDf
	 4VmOwHW1ilRc2FORfntwCLst+6v0WRWsNz6ZUG+SFgQSU/27Pxr4VjfLzI2P4ZeN35
	 21Ne6ok89f/8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2FBEE4992
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 22:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169239744868.5160.12673517816695855101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96cfd20c3e23784e83fbe2a9231d68988f30271633f40b79dc5bf5ba97eb112
Date: Fri, 18 Aug 2023 22:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692397448
