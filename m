Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF0B33DF
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68469C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662308453;
	bh=Bhwv+M2Ktp6D6BLOJcXi4aTbloXxLsgj5fcBx+QfZgs=;
	h=To:Subject:From:Date:From;
	b=SvRgQyg6NH9OGS8V+JXddWjV1DFbO5Z+4pBjHtJXor3nYJLJmM7JWzl+0FQK9JWCr
	 vYT3kZHINz6ZviZzG8A7a7iMEOmXgzyIqJkskBtYG5AcFpLMuKH3b0ZqBXMHyWq4YX
	 nIWhVbDTT5yM8apxUWj7VvSMZA0DSjdGVapYJgtQjP4YyS6uZ2WksC4t622Hajpnao
	 JE9raADutfZcm5CxX72vU7MdT2cMLbggm6cUsLkmY3973+r1nmtGZll08nR2F4q03h
	 sRV3SLxBXwHVIqEzCajysoeKqlRQ9uWmWEBiyyoRwzDVw+usfBN6HOvRfyMesKaOH2
	 bY2lflkTjnL2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E59EC6FA82
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166230845331.11728.7728942155482362643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377eea28e7cdcc425a2eba5b118c80d8a4a954741c0a8b8ccd02405cd4a6553d
Date: Sun, 04 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662308453
