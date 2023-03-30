Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BF98835
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 16:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EF9C4339B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 16:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680193145;
	bh=aLtCqj9U23SsQPUsSrNhZrWXvKmUDlk20JhOWmJhZys=;
	h=To:Subject:From:Date:From;
	b=D09UQXDkiJ7RdTcurT70YKPGrObY80aFhvTV49YedrYE51jJqg4dR+kE7u98BrmXR
	 qE5MJl7my1cW3QCYuKXVssWxC1dPpSSOy3aRVDhAucCNLpkvJ4HhJNtzLRUEgEU1/s
	 yOLJUYpIz75XjtJUzSjf6IlJCQ7EIqTQr9y8NNZ4tX48p239SlclpQZdHZJIQM4y8Y
	 lW9+oy1GHwCaC2ggzi90pVM/2/CpdmNmUVndCzvqcRqlqWwLjly+pwUr/mcxXJPc3x
	 y79QevP6F9Ir4X5pl/FAyGUvsPkSOttgg+vQbJjKR6Z+7hXy3EWLBnY8h7O855Rn3o
	 /zU3yzXvHxm4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA594C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 16:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168019314574.31326.9634048719891154336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5a8bcb28c1b5743fc7e8e0d41144ba3a76ac58911554d00f0fe91d1c570d71
Date: Thu, 30 Mar 2023 16:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680193145
