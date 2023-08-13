Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83AEC1360
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 04:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0FEC433C8
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691899388;
	bh=PtT7P7nDbZGFEci34o6nZZjoROpqSGomd4ADDaHmTsM=;
	h=To:Subject:From:Date:From;
	b=JlXmY4efcsKU4FBp8TEOtOu7mmRFC5L97Y4IotzfKTPxzXPtApBchP6JbkoCbri7F
	 3meI+1Vc0a9kHrs4tuaKhYNJh7ONqEZ1stDj6h4B6stb9IwxDrRe9slJV1xZhmWGNu
	 2tthJyME91as9BHF2Q8NkfDvBFA/4DdSYVB52MIZIbUy0lh9bTtmumUlzcpokHOcYJ
	 TelKA8RtSgEucMckqkGcXmHXlYCKzLj3SrIUFgeByTtC+2XcK+1M4YyOn93qs+Wd2x
	 bQzKTcn5x+so1PxRtuF9/0Bi2BZGqIV0PvMxp0hjzAjokTt05/mmGpy9XQpCSX/mNi
	 3ngD8tM38rVlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DDCC001DB
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169189938867.8002.7568942056133478079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571bc9a27b63f6ac6c77d6e869e0d6d0d00f568e773ba4b5310294e99c04081e
Date: Sun, 13 Aug 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691899388
