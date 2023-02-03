Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9F8AD3A
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 17:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6773C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 17:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675446965;
	bh=fOtJybzqMGLWeZC8AROndCzJP4u2nCIzT+Db3XLWFxw=;
	h=To:Subject:From:Date:From;
	b=iozlIUyPGnFYVPfxuzFcR0YGxgTBqogf/S7ctGq3Dw//qCQ/ipgbOQzx6dSJmMLuJ
	 UG3QxP4r4Mb33HBQfafcO8XcbdxNSDp9aABbJYz4GzED1xByCA/qvOZ5ap/b2PcLn0
	 HOQ7i5MZDnlt0bWvMyCyQhc99LvS6Yw2QvaLtmOVLMrHEYkkIRxOPAStwD/8grdPvm
	 HB4PvtwNisqCCkJdn4BLVAhdyF+3cUf5utnCfEhVyhkGrO5hJnAphjiXKx9bE3HrnE
	 8ZcbS86yokBRdSs7o/SwY8qvLeWWNRbOg/VaV3gST+ZUSwgWJOw9CAy2IOPJkAAekr
	 5wnTttRqDaCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83DCC61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 17:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167544696573.23931.4443029830213695701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3da4c6257b034730d2f9cb40eb35e63da58b41e37a367f67b2f7c67248d984
Date: Fri, 03 Feb 2023 17:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675446965
