Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7E8E57F
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 15:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8DBC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 15:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693497248;
	bh=n3h2KbfpXQ2iPIjj/iRuU4jMrNP9ZhruwRxrmjfOq3A=;
	h=To:Subject:From:Date:From;
	b=CSCzdZrWmtATR+LyaKg6AxktEIejhsBtuk16KtXqhMcXtFRLYuq0sg0TI+tusr3dJ
	 ybDPUqhs5Q03ZRarNQciP42rk6ce632kVevm353DrLJABSCgVNOIXiifHDGvJoo1BR
	 gHsZKJrfhLzYyJdjnOVe3TMmsJc4OB/13B1q/zwXd+ltAjXh6fSGPbzZHBdY/YbAyl
	 SVk5HpKZJEHutgaoVHt+0/EAyWh6DTOp6P7Y6/LR1AATfYFett7XFpDsfYCAhiBTHx
	 LF5GZGp/6FlRfSeq61m70ow0mzEszMq4xx8YrQeQMkUyshM4sqWBp8fpIGqoB5M2bm
	 fptP5f8Gwj1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD088C83F01
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 15:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169349724870.31502.17601870331317561465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495ebf19503b3c09cf1f1db4ec9d868f392dbf847f3e262b59ed97e561708763
Date: Thu, 31 Aug 2023 15:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693497248
