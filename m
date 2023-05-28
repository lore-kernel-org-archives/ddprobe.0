Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253177C
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 07:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4873C433EF
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 07:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685258945;
	bh=DA0aUZn78KrF2Pe0EwH6kShbxPiWpJx1InZr7gmQ5Sk=;
	h=To:Subject:From:Date:From;
	b=aFNQgaeW7Oq0tkBUB03HwT3TfcKe7n6rlzvqRq7QwVeEnc6ccahQX/BYlyHxyJqDg
	 LzYrr/MgRdoLemTS4V8Zz6nz7YS9nw2hBsaqkRh8xBJMpayRwQieVlUlaqOuHChJlQ
	 W58dAcfvSIak1tg3IpQZFJwTvydCtYzO6OnVq9CvcXbswOOMvLQI2bg8yHLyXU5MJa
	 gOZlZWDhO1QvhSyodkAFG6juepT5AJjRj6i5GgeAEVsbam9TZ3x78nemA0vGMxRUcP
	 P0fbpck87sG5cTL2QAQVxJ+3+BVOv+ge1iY/XlxYi/j9VkaVb1qv0M/5sWYDOj0Bq+
	 fEgp0UUmQJUuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0EAC77B7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 07:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168525894575.13907.7012854296334833448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3150f0acefff2aade939f315a9da846f6d340ca5d80ba8478f2c782907704d2
Date: Sun, 28 May 2023 07:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685258945
