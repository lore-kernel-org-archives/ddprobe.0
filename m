Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199F11C8D
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhucGakx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 883A9C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700312896;
	bh=NKK+Qdb+np77c+2qhrdfwNEK/PLu30ijlWsYh+5CrH0=;
	h=To:Subject:From:Date:From;
	b=YhucGakx+tfWDxahEqIAGvtLJYqpKMuhqQ+tZBnZWKWAWwTPIt8SyzEEOFP3qkKzU
	 fWcJZfNxSDYBn6lN3rdT9UUxT0/Bt5uLCIAfPjpv/MXZPmR4Kv+Mwufx4l6hmGtdwe
	 jEb52mLv+sByafYS6Wn3cgErIhFQkfC6fqqFBJVx0mGBGPy7pGC3pKWVW32aKMAmzk
	 WSCtd04rAGXv8xpn0bCa38IcTIX8rR9huRJxkvCp2ouX6nYcOJv29OFKBed4axVvIe
	 2Wfmtj7x4gc4QOGiKKjQpHTqPKAhbVyTaiTlPIRS5YoOUYXiixQ3/Ri6n67LL66Jgz
	 72ta1NR55M4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B905C2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170031289639.16595.15674894353265677226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6754e5a6c4c222727ee759ca93a7353d7bd5267668b245457b432eeb79c736e2
Date: Sat, 18 Nov 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700312896
