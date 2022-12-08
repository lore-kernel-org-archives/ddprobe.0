Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF17FA460
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8237BC433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670535087;
	bh=jzvQqfXuijxlLuwcAI8Gb2jL0Je5G0lJg7YFdX2vxxg=;
	h=To:Subject:From:Date:From;
	b=RiXFApXvwdmIrankj8124Q6kwQ+v2IpuJAQKdrpRj6ozuXFDnX7yTcz3dEgbbCVFi
	 rk+aT6kqgwsTKmDXMPWVjamXkBFti97gGj49a9IDHwZTKg0sDXM/LEBlsX6UwM7rzl
	 EtSaj3B0fPDxL2U2cfVX9xKmhC4t/E+D1lHv36UMD1746Wk9HDw4z7VUNeRSHCMbA8
	 vjh69I48YLRlmQvWypDUriuQ2oJBhFuDdgbeuVZiK94SN1ObLM3xJ/4S+gGykuoaT8
	 wVKj2gYZgsBL0ZslMdAZf03wy7/3hKyBNuMG0qn4kFrNSgHbKiAsLIvnOrlk/G5kuJ
	 vMsrYrvgl7gPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673BAC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053508741.11591.17193198243684284791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92841df636925c713cb7edaa70058f7444260d35488af0a735cd40311fea6cbb
Date: Thu, 08 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670535087
