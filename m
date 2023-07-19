Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49685C2E9
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 08:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BD5C433C9
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 08:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689754868;
	bh=6bqGTmz64bjBk1MaZQ8eJ7pGMGDZYAzJXzL9jSoHsIs=;
	h=To:Subject:From:Date:From;
	b=hUYSdc0bVsLN6q0xvUK14oPKvw6QOszhXEIrrLPHxYblJWU40PkTvlXWtAAU0AGxU
	 0EYXsyEPhpCgiYt99kbdJ5/SLSUXKNHNPFXlgaOgbZtn9NLQJGg84W7g6Huq6KEAzI
	 gE2KCPWgS5vvjRkLS1WPntAfS2VY3EzGw8lRsLs/hYPnXIepWn73DSZZzFWUM5UWtK
	 P22pilbPfHS1QIgHgZrv1Mo5l2WlF833Wx406Ay/O1XPoTdbjcah6l5qVi0VDQlt3x
	 w+AAbvbwmcZEHfdzgr9fq9i9IdLEGiSKoozJ3YIkNYNdhtIIOOv52Uh0e7lRqQDhSy
	 oL7dTj9STt5PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A3C001DC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 08:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168975486868.21070.7317986920389888116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540e2ab1c6a4eee8cf72b8193a6984789d955ee58f4ce81905767c4606f73755
Date: Wed, 19 Jul 2023 08:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689754868
