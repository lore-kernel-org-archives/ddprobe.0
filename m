Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93B710FA
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D20C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667553054;
	bh=i62rXRSzdxIaYLLnla3YS9VrlLk+pH7GexvuxwXE5ZU=;
	h=To:Subject:From:Date:From;
	b=Q2sq6aiJXObo55rcRxvAMcVqL/E0O9RCg1LQpSTnRM7Gg8fbnVacDvYI0i6voJf6w
	 qQ6/1w1ePUUVSxVBV+1pHWcvOCZ6ZLmK985V5vvTXKTymJ1eTyt6MN1fK0VHeJCAI6
	 xCORtKrtgiwOFQp4jmWV7l9jrHlhYGlNgatGQW2kHDkZkqTAe/50yuK0A6YopGCdde
	 XgBMKjCrLn8aqoWsCknniiHwrwx1y5lzwQKOVbIOWR7yGh0Wug+IU9MWYRt0vNomFO
	 O5izRk95Ya7SW6pODirpB5eDmyx1SJFqW1vSeLdahrWpJ+5rkIP5xWgu8IBPYVSA23
	 r73N4dee5Pnzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED98C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166755305437.3761.11149165192077433497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84f0091d0f819df2dbad9de0d753ee0717fbf5b3da02c9f1fa874a4e4e1a6f3a
Date: Fri, 04 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667553054
