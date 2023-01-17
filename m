Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BC328EC
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C214C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673973687;
	bh=jjWb2kiZcF3sS0u+Q95fJXxwe7GcH+JnwdW5XH+44+A=;
	h=To:Subject:From:Date:From;
	b=P2Vtr1JLCehoZvE9k/ROl5f0SWuSOZq8aAjjYTj5MXzM25oaDS3kecwKOAeF+4cXX
	 bx1lzhxhvA0YM97sVJmNpAhv+bMNwkGRikldLkCrmUbV7vOifCs8reCLeN/eXnc6GB
	 BhuyFAzO9JCQ16ymBinxa/5Nddn7yma8IW0ChhL9UieiMhv16ez1ubZiWkhibtKXnr
	 dHoG33LqZ64MAsWTXG5Oa+IOIqafZOunpppQ5YWozg1svGaII2IRY0iJmWOoOP+57B
	 dmn85FLZ2wnmUYmoLjn218Q3M3JP+wxoZQ/isY5jobJTy8WZdDU98Gh4OYvAAsO6XM
	 CnCexCIqGU1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65E0EC6379F
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167397368740.28413.17719911148571683762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec3d2a7ca515237621a5767570b70072bc3ab91f0d57b30dea6928329b21e3e
Date: Tue, 17 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673973687
