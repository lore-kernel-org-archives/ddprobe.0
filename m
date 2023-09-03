Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCE017EC
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 09:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD24DC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 09:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693733048;
	bh=1Sdbm4EaGf/6ZTKrAto9siSDuqPc79Px+WGz+aIprKY=;
	h=To:Subject:From:Date:From;
	b=uvF2Jx4V9eKsFjZbi44wjeGg+O19aJw/7dnXFUWK47QX4TQ6jq66ae2CqtXirJyOd
	 tiqqbjLxfdB5efb4jhFVU2RS54wR6k4SWNJuKRQcRhcVwTc4j/l3sQL7uYtJ3ix2D5
	 6kk2j7VzhYMF/4VnXUG0rIy0PDsOprC63FyjZsY7cVmC91vMiguOmj3y4R1nyr66sb
	 KPP02wDx72dt/Y0QzZNPhKXYFBtoemKAhWpA+ard12B+tSmFx49oOyP+OaLDh1/8Lv
	 O1iAchqEG46HDuFkBOXA7dofvcI7MgpIujcjJyvowc0hs7w1J9GH9km4zq3IZDiMjt
	 8ce6BkwqFhmiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7D2C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 09:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169373304866.14127.3285671808819704448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7f21932fd2d042e656275600ee20923d245c8d5c84dc0d6332f9e14adb20fb
Date: Sun, 03 Sep 2023 09:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693733048
