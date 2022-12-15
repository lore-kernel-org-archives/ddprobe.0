Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D118D6AA0
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 20:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B758C433F0
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 20:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671136887;
	bh=OYVZLtceJBd47ubZytJOPDHl244c6x/8KRnL2B4uaHo=;
	h=To:Subject:From:Date:From;
	b=kNa+sWAPKisxPCGP8/E2QWXSV9ZZi+tOexeCAugtwWKE1lwphJHJMWb2Mt2xDI2gU
	 DqEAUHug5xWh8v806an8rvf9U2ZCv2lR4ITl3f8Gu4rmLAgo70XuzhZcFpneKKDMC1
	 vujPyU0K2WejU1b7SUThkQGcduwBrzQYti5sqiIDxPivu8bEHjHDYZlfAcVOGK/PeH
	 roHb5WTXbEDU5jghtOsWJUVK+Yjol4bGYpLTVK2dyc4nTz5xUXufELltHncW9r+byo
	 2sQoMwrMIjcV0F9H3NvWFIGQlUTIJYlx7550zmqZ2T9Kfqe3U077UuJBt8C5x+uAZ+
	 SAI0TLXoRdLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65468C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 20:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167113688740.15957.17161351377421521424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b60e457d8d6039af0c62fa43663af6a2797000f252f24055432eecb35195332
Date: Thu, 15 Dec 2022 20:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671136887
