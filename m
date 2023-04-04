Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D2FC942
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 19:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D533BC433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 19:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680635825;
	bh=dXeJEdN64wdAdYgS+z71Oe4dVb9AbAXmem4mmGorZ5Y=;
	h=To:Subject:From:Date:From;
	b=Q3VI3u40fcav0PporXkovwTDMEP+EUNxWNW077BTDwEu7tReu4aFQShjOg3UcrHpC
	 /UWehyhT8TC0VxLqM3a2ysqrS/s/hs7ZrRstcinmwHIQNMC86w6CY1nSw+yu3e/lCO
	 IuHFqbBDo/GKiuemBuuaGt8xxQatELoQGn/Yzcwl+sPorUGu9Ha2PVqhHWL5Ftoq1y
	 jSyMiCNTu7qzoOGB/eDDrnNsU+Chygq6GBobo0WqsEZkwUgHTSlChufQfQH2IsrHVp
	 Yle9wTpT9cVMgUibcDy/RtNnslfmU7O8ImVdlHGbfkppy1cWolZbEqp+dTw8gmWaWz
	 yJ8Ug7qe2XgEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8525C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 19:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168063582574.6486.3715524582537273675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2301dad5eede35b744fb8421b7ede9311542604525b44c3b4fe0356ee4c72f9
Date: Tue, 04 Apr 2023 19:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680635825
