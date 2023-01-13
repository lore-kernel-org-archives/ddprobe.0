Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223CFBA32
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD8AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673641287;
	bh=WJPQA6m6/uheTjlZQe0KnSgAXjjD3Wn/nzYEjGpOtHo=;
	h=To:Subject:From:Date:From;
	b=Xfq4y4LjAAcHQu4e4LcR108rL2/CjKW7eyMeTh3rzhQBX1z5NngOY5rH+XUBJy2oQ
	 qwxXDuCn/GnVJPi4cz0u6cJPVjG6Eh5mAkX9MBU+qVR3k4LWc9ZI2qaCCGyU/fTCUB
	 w5b+EgzraoYv26fAplCMqJvTxZqD0q1mIj5aByhhsxNKvaBIPs24kvjFTdfJiYR+n/
	 v9VIzE35Kbs4RSBUMm2PW7GO94iUYMRxTA3ZLKuJPGKw/ec4eebGOaNexs789P8z4r
	 uEJotx1lfw/oM0t0rA1VIplnf5smdtmjB+geGJA+6VaozpBXFFYeH/Pw7jn/zOb51E
	 1V6mzzuDACJag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A3BC3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364128759.15509.2542215926396774067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fb1808759e5620677d7ccf134809807c9ea3cf2df2b90346389ddc4c9ad26c
Date: Fri, 13 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673641287
