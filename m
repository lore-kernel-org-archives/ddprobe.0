Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A408488
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 23:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46EEC433BA
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 23:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694476448;
	bh=U5cHOyQvq+rCGgaVgPB0XWMAPpT32UxS8aPOqt5Qiv0=;
	h=To:Subject:From:Date:From;
	b=A72K0fxuHaC+LhppmRcDIaGNE484cD1NrSPqCDBU3fBaRxrwLYm0f/HugzGZh8Tp5
	 zFS+JbUSuKGRiiySJeSb3ulxXFxwDqJp2YfPlnqierMUAijdoEPLReJe7oR2CKWC7y
	 tocplbwsgxzTLwBMOK9Q1jSvSqnLob709D36iP8puz4vqtZ+bPI6S9OEgv00N9T+31
	 p6PjFUVYTFSa+a6Fz0j/7IMxeRciSv0m+PrCKpu7jfrPvv/6INwVtg2Wr8RVsgBydr
	 o8wQZA14axzDc5qbRpprhZEEJJkwzw2bo09UftKgdWowufy0534d2b5EloD2ZaJ5JK
	 xTqR2B4IfJt9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5198CA0EC3
	for <ddprobe@lists.linux.dev>; Mon, 11 Sep 2023 23:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169447644866.9088.12495986362480353937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc215ac9b345e48e1f0255b2069c7c269bf3cdea3353f0e1373588e3aa1d5554
Date: Mon, 11 Sep 2023 23:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694476448
