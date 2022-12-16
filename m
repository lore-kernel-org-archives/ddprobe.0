Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13C1366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BFAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671164487;
	bh=jCxbxxuCJ3Mcuff/a8/eZF/WdmyEKO5Im6wsEAvwgpE=;
	h=To:Subject:From:Date:From;
	b=fW8uvhHmaD5wy6219hMu9aIq0GSSKgdAHb7vLXuR6WqQf6q5HaSZkhBEi2J+nVo4J
	 fd/hrCxw5IKTMMumIXu8vlDJ8IZLMKrij3NfnIEYw859iP5zHyDFvdbgmfg5WaU2+Z
	 fYhSOm8joIjQbyfU13BWvo+KCGl1oUb+Rnsw7s5M85z9bswbYLBZtqUuIX9rCT1CpN
	 oJREYHcFMonWm8PGRw9n6eMup3gb0pLLMvrAe6SMrQq3uXY/ixm6TMynnvKFkRKS3X
	 O/rD4w/m1DOPWNm5c7TuSS34+bHiexrs4y26j3KT6iTIgy0aSFINWLy4H4TXjKb/h3
	 RjEErqhgq+Uww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6112AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116448739.27382.6707800820120900723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e7766c0ae6fc0bb54f77fc60799fdbd5b395d08531a97fd735c41a0f798fba
Date: Fri, 16 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671164487
