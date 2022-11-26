Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B927D7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71335C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669500054;
	bh=D8zeatv1qInpguU7g1c5Ejnbp5tT8sMv/y0h9XmIztg=;
	h=To:Subject:From:Date:From;
	b=memAhT1izdw/RLUMNCeD3J3d5qVK/UueWCUk/w/IGvbUOn3GH3dpJsT49iowqRN8H
	 gq+io8iES0vrfKD/BheQA1f++3gtX9b0RM3ZEVKIRt1K4xZr1dIGzon1enKV1ZtWKJ
	 tHNj2HAqRTEmeC1/9gSViVTX9CtvDO/JQyDx+/xjtC5CXaQODmQCA9AS4Fcwcssl2b
	 ES2wqEuxSvHj11K88r/2zBqcYWPpaW7Jh9ZCwSMmO9WQoWoqdfi0UxCutwEtOCnbve
	 +NXW3f0pLR+LcJkrM3x/4CKioztiSCefPxfVbjH0r+baBIA4Wa6MkJmQdgjFG6/hYC
	 ePLinmvTVYMFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 594BAC43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950005435.7282.2365886858694022852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436405717b3ff7295e6ae5de8a46a181e08e35f1f3852cff957028b59f7cb88a
Date: Sat, 26 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669500054
