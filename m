Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2723462F
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 03:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D432DC433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 03:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682910485;
	bh=5wMU3oGxS2WyIg49AXO1UrK9F+YtLvnkmX+RDP66A3U=;
	h=To:Subject:From:Date:From;
	b=i/K+8xuqOgvwoSd6FigbXlMSVZtkIkusicqyGNGgHDdIyyHROu735MZDceadpIdfH
	 RFnVh6mXU/kdnJdxzdyaXlw/BbD7TVOpD0FVUmNeOfs08e2HOWB9fdq+5NTlBo5slH
	 Mu+z22JpfsG7nARPZi4+FcYvyVuK8m9M2QeHq8ET92C20h0PDKEiHS2esEmi2B5u1Y
	 RrFfpW7jQ6/e2CR3jbqE4yQe2pc/cLbTzYO90mfvQ79LoKEssdXY0J1QKnH6OrtRrV
	 m0UekCrrw/YTfd1AUHUJnda31TowHACGb7Vksqb7VPmxwXi/Zl/kBmdMWDw53qOX52
	 zE5AQNbZswkaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5F2C77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 03:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168291048575.26827.15097788877157489722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d014aaaec40a62577d0eb5441092da1f67cc636d10d31d0560c55823b736bb
Date: Mon, 01 May 2023 03:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682910485
