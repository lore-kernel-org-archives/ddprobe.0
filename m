Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B963F1857
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E787C433D7
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666065653;
	bh=kcZVskdfHRv0PGP3+jy1alLMht57f747tJ5KlhxnMu4=;
	h=To:Subject:From:Date:From;
	b=RTZwT4B0/blkr+b78Iayo9YVQoF3Ke2sLJF3gormZbgsw2592aHSpArWV0TVqgsbs
	 ixcfRgCnoWH+aLA+toSnFEQJCCZC/pNDC9nRpL4nQOF3+V9ir14u9kykJs2Nccc5A9
	 l01rH9wZwEwCTKo0fFGENCcwNHiFCvr6EslHxpMKT6BHKWXR7nnQj7Ujx7+eQ5ty42
	 wEAmmqLXNtlUr5KdmnfeYgDfhVVGH0kI7PL6eH4c2KRZXTIC8/rUdMuJ82pvsnBnc3
	 qvobyaDdQb1rqbQ3SdTnzep187IGUBJo2NnW1UE9C3HVZd3MKK3RPrygiwEhztQITY
	 n064cYA00el/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5293FC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606565333.12606.8199597258504637800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d70d5864b89cd2914bc46ec0cdf22da44b2cad540cf18db563af43daf04c8a4
Date: Tue, 18 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666065653
