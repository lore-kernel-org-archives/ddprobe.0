Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517DF10FB
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 07:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E601CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 07:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681631765;
	bh=wvtMsQmIakmsPFOPgz0T4IYVsbuzA+193c35O2GCZeA=;
	h=To:Subject:From:Date:From;
	b=XKduxoqwj2e/iuJeFNdUpBCvb3w5s8pk9Q47Jt4IaBVSL8Xd6cnrrWrXA+i7agfUH
	 l+5cXQip2m5XHSpRH8TiG+ga9JlN6JCXS8ADvR64KjKfgVDI2cs8BFkBcPLsqwW5ze
	 lv7ovL2uGTWeMQ0gNLZ0Ic6LT7T9LmTM0I+PThl0vv6M0uY9ShORicWAjUD41toQVb
	 T6wtoO0kaLu/1eZUcplfoyFXeAVmTHpWVyVx6f5hfqWw2UC1JLDF2cmZbrAutj+qmz
	 6oJjCa4Cxgbe3oF1yQ8Uv25czwmoZlP/xw41r2e5vFMJqcj4zwsIHEALSNjVVj1Dms
	 LWf26kKmdr1QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C761AC77B72
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 07:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168163176579.2233.10008232056502321733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6401443c7105a9730b8b2aa6a044f1ba1797a5eb52024f0b5c594f6cfcb72aa
Date: Sun, 16 Apr 2023 07:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681631765
