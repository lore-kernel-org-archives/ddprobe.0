Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3B1EA0
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 23:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C269AC433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 23:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691104388;
	bh=XcWZsTlFs/N/6h8toMOysYhPr2FiM773zM12cjN2Ydg=;
	h=To:Subject:From:Date:From;
	b=bDyJBpqbIIE9Qk+ciR2aWGChM1YLOFI/KJdYuUyM+grFs+77fFZFVxBeqhr6Sr7w7
	 0R/inLpgq0VKBY7ZWtoLoHVH2pvBcaHn0Dugi0a7UonjEcj4xmnx6EJ9GqpNqK0YEk
	 nJ82sIq65ICA69RFIMPtRbpcoVD28ZHi/j5YX9Q56M7bqu7qOhgGNVJEqAAdXAx/XT
	 VPbgEvKwKFTb/Q56d9GBjHrfRillZVy6s8JY4dgP7lceFHw/Eihk8NhOojLmBzfym7
	 V4rPxQzB6jkhpWmY6WQen1TU0vtJz0JqV+tAongRGjB1zcttnzcrIP6KQWAF6ERyQV
	 e7ve+rBqu44sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D6DC001DB
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 23:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169110438867.9088.11379301621177202528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5424f88af4604b85c49a853e5fb8226bd22d90f499200e21fbdc5257bdf46bce
Date: Thu, 03 Aug 2023 23:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691104388
