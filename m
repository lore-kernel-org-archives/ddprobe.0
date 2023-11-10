Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23163C079
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJdSB1lo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BF2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699650496;
	bh=3jLh6b+LZvS41fJ6tno24hRE3UIN8GbGtR5oPrcxcuk=;
	h=To:Subject:From:Date:From;
	b=iJdSB1lo39IfbIeJM1JnnUKLXVCSL8qd7WoWhQqyxdZXuW6Qh/bScIfkpPPXt9J3D
	 jo2QgszOsiok2jO6WDIMJFi1Um4OFQ/09vEdudry250QMTgbscQHPidHVsYc/Us3t2
	 f2hlkOPiyM6iyg1PiDnnvtiC365G5A80T+Y/Tg1VFEiJoaT9RoogG1VHPMPtJF+Uw3
	 cBRziAIsXHu93mz+8Q5yxj4CC0Xo6jzM/0TjfaFGj8/8xOv40P1dzk95fI+Zo1sVvl
	 SNlws6tg2iMS+QbHOJ4BMBR8c543U0I/eL501z8tL5bsrVRvXk2/yfc6g63sisIBwo
	 ztFC6gud62ICw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D77FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169965049637.26105.1086744390683982158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf06b62f2b6c1c6995dac38e10245725b93077ff82de1f66d730f4aca909596
Date: Fri, 10 Nov 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699650496
