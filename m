Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93521852
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C35BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673860287;
	bh=z0n4+0nltGu0/7aOCMO4YEG6usRFRt+Vj3wONWpCrw8=;
	h=To:Subject:From:Date:From;
	b=jn0T+MlFHGpGRzicjNYse7rB039HUkmtCT3kkQ71uaOVBfo3zthTgW8ragIE0yrPp
	 Ox5qxdV5ftwBvNXRCaHBQDi11GxbnhuGsXfedSCQ8E8vSMncJg1eRUyAcZbvnNCRtZ
	 MdFzhrYgAJunrXyxOF/w7NZkXB0sZsNMMb/2/XCyAL6+3oK89759W34nQJ+SRqaxus
	 Vqdas5uUBYB7lhQ63G1xoFnr0ZUK4jCOjiaSPD8ft3c9R+5ePhqxRzkuQjI+xxsQr0
	 QcydpyduL1ZVjrwyJqnaCasXP8MeVEnAH4WLk5l5SeTlJLO90G3n3SksGlV1hlK85f
	 85L7cMEGq4K6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61805C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167386028739.7584.8284721199946017888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979b8ba7b104334554fc162963f0361df9c5d4ac41319667ed350b2cb9e02674
Date: Mon, 16 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673860287
