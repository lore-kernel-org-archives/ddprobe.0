Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF82B80C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C25C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665854453;
	bh=qje2mUh1ce+OPLqNyXSrQFcj8aVJBqLJ9Q/zuG3VS1k=;
	h=To:Subject:From:Date:From;
	b=bCgHSemXeShKY1XhzV3Sc7S2mWRW2N+/dOKFgMQbdLeejMpTiRVdfiO02cPO2+/4v
	 Lo9t+4MkLBlQq+pgPE9F3CZi9V5cNhmnfUGkhO6XHBBNLi/gekyGxJPCLqYbVohCi/
	 OuH0pI0MAV/Z2ZrMh/RJlIp6KaoVgitMIzon8b8Acr8mKhx4g81dZneYNk4j2qQQ9F
	 CcELYAVyJMR/X9F/wXwQ6ZGfN5JOKFNT7jxfXI9OGYwm8l4sQYVIdTedyTogIWPY3Y
	 e6+aboHwByWAY8b8WivPtXQnB6TS1RkSrmYGGaH4ZQB//wiOW1vmhAA+3xc6tT7QaS
	 jGwhPe/6vILyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538BCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585445333.21345.1737932686337954758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305626e93a1f89569794e7af6013bccf141633b931fd80c9f5d81cc58231957c
Date: Sat, 15 Oct 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665854453
