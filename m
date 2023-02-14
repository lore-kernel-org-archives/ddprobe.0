Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE04256A
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 05:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18EBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 05:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676352305;
	bh=IRxdpStgvd01RZKZBQ79kNS/G8m0ly7gdutA52ZTeTU=;
	h=To:Subject:From:Date:From;
	b=V39QfU722KpPq8sMbwZZVXvTeWSAOa860InCaTfTKipLJhGxWslSULzXaGw1dLIXc
	 btQBACsSwb3BXnLsoLM8PBljR4dDbgja9I0BRIjxh/jXoHsp4OI7e9GcUL7Pahdy/9
	 cE/MM6ELaorowsauADSURoPGDbl/TnR/hI0VWXjSXVGg6AsSp2cuOzKDk3NQ3nbjDf
	 IqNDxFh5XIoDKRfovkSq0Ev275ZQXreC8qe61MSw1LrJd8AJeZVo4vHPHe4gc7YtUN
	 csS7OD+VX1LFadvy/YBnJDj+y2oJ2vx0OuMAb8MoIolAFlRsddY+91qSIdlEVWo/+N
	 Ma9QPORTX/6gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CC2C05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 05:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167635230576.26633.5290260658884824993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91d9876032b6d16e80657fb5e440af15834410b899f6a1426748d58dc056c0d
Date: Tue, 14 Feb 2023 05:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676352305
