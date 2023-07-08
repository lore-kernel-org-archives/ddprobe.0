Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC15153B5
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A620C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:47:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688827629;
	bh=BqQsiTtsql0NQYEMR+yInvWARdvEQpqSgc7usBJyzME=;
	h=To:Subject:From:Date:From;
	b=nT/3yi6LzFx9TCvcV5T5M7QoU5jTXejkqJRfoWH1J6HXA7K3vuGnnm1IoUDN1MJ8L
	 3pjjJPelu1cQAmEdyY3o4Zhii2H0qO1Ze/ZDaqWHmSR1Fd1kEJfHB3BpOH6yusEk6V
	 4zZIgBWXVLPuz2zxWgo5RKuKcXJY0Jiec4GGLLqVv83Ave9qlrOlNkXQNpVGySVItr
	 sMmsEKeus/du5/2YP/rjLhG0AYIlz49qHsvQ61UkgmyL4bIutK9d4fj1zx5CGNNo+p
	 GFSfxfaYWvEKFB/LYZ84Xt7zhQD3BYlAeqjMhIcE5LBez593fBw7yrpSrxpVbLtdCv
	 oRs4S6wvtyC3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 042E1EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 14:47:09 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168882762899.17123.4098663036260915524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca03e4df2db75ff49103efccb5ecb481c1558331300a7a9afc1494b8d3ca2536
Date: Sat, 08 Jul 2023 14:47:09 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688827628
