Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3BA79C3
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 22:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1C1C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 22:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685657165;
	bh=Gsspy8L5pvz1obKfXWlBQQQ9HfmxGh8YNXg/rTIMpqI=;
	h=To:Subject:From:Date:From;
	b=J/YVZF2USnLDWzQHtfWZ997XbBhYtdryExajt1JgEUVPodvHUPeUDj8bN2AzrGIiO
	 opHoofOwnSKGBhxy98e/3bbespqCFIkAfnUnm8ioUi/AJzfTSNA0TqsyzL2M9A9Lcm
	 TfxMod/RzlRq3REdHCb2tPDohh/2WayycC6ujxNAxSuKS7zyNdrXbjs65hWeUN7ezh
	 qSLcyKDB2YB26iTDEcgJu5RI1CFt3f1nIxbaRK85SJklw4O575ysJMLvgon0GPM8mT
	 gAa7GRYY8M/8oBvaZ0pIkcd86SBKtV7B8b1BmtuJitdnPklwvTfa5zMt0cxlwY/ex7
	 MJOlxyzBDudjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC23DC77B7A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 22:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168565716576.17877.17128140736953701338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1072cd002eb14c7cbef2ef4cf3aa3cfbac33ff1ad51c40584b0a3b8d5ef5b9e3
Date: Thu, 01 Jun 2023 22:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685657165
