Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFFA194
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 00:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6433C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 00:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679617805;
	bh=rfne7cAi5tKot3p/pzGOarL+3oLoixbTQUwXsCdhBCQ=;
	h=To:Subject:From:Date:From;
	b=Utl+2Kh1tOVlzm6VEebKEXU6Nqq5uo+yQ4omyjwddGokUjw2Q0Vsme/m+RsePm5HF
	 nVej5tW/eYVZEAXvLSdgcHI8rHiea0xBJ63PjHIT/zKZdM+SQ0/2TvHoPuwkDoQ04L
	 N05J17Z0RrrXpruSSPG4XL7EDiNAnjHLyKkYmUBzDc6OwMK6vwUDkSufZ41XFQvvbU
	 bFBtuf4zJSCU1OvAbvP8GyjpxNl9KkCaeJQDao5T3l6gV99ePx9OT2qKCZFsGy6UbG
	 oJdO7D5i0Dgco/o41NLzJfZnumcHFSmiR+B4uZ6tSEi+2ELV8xZ9s2LI0QFPpEAbFq
	 taYETZ5TLF4yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69ACC6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 00:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167961780573.2760.14189604833764204917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e1f258c1470e2f1e0158b7dd05c26dd705e0756d9262982c1f7b411f67e0e0
Date: Fri, 24 Mar 2023 00:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679617805
