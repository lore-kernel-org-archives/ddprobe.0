Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2812F30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 20:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4127C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 20:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675024985;
	bh=sINRrxMoqUHZv8f+BUoI0L1lBHClN0tpONlpPAkkFDI=;
	h=To:Subject:From:Date:From;
	b=pX0xBKIC+Xbv6hB70fA7lIN7KvCbDzzRkwhQgiqrdFYoziBz1nrKwu2kO0CWvCqCR
	 gVikCTFD9bkpW3Yp9nVS7JH5xRsL2HdN0vLzZyV9QcoEDZRS8nzJBuEIMHBDZxry/I
	 7CDxQGDBZAMaJkU+g7o0iZDmY0xzfOeb4fC0W3u/BAFiSdqDT9HskqWmYk8YgPZ+6D
	 5/Mh4ncEPgX/Di++nCTJuV9WCXInizY3m1veu/dJ/bEGK9D2bXGdTrOeOoW+tGkqNK
	 v/Pt8bciBvC9x2zdQdbrk8UwLiIvHDxwdh8fy+gFH1kgO1hh2nNglhH9bUQJY1LPVL
	 jHquKEdkXau4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B79CCC61D97
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 20:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167502498574.26753.11085175762486566393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621f4722ee010e4fcfa7368b41ece44a91856e75569a6bf2a0d41a997896927d
Date: Sun, 29 Jan 2023 20:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675024985
