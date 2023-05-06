Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586941FDA
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 10:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE799C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 10:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683369486;
	bh=VKCzXG8ak2zsu5mqeFlczCPoXQ3O2cyaG8IbXIk5W3Q=;
	h=To:Subject:From:Date:From;
	b=nwL9S4nLZH5dsHDgLqrcD8Ka1Xe3LxLZRCaEsXtaNAReMlFXxexBe8R1eZIjFAmsd
	 hskHOkgQTwL3OjcSm8OTvJGWWbC1P1/YcRBTRzPmM0y9bbQEFD1emrYy3z9r9+0WBw
	 G9FyOPQjEuSe/tc22lyAAV6hC2i0D3B4v3hoejeLilf3FVs8QPzlxnOflPZffAU66X
	 Vz2P8eK/IwN4uFdERQmuOeLXkV1Gun8Ao+kQwwi3PWeuoM6jh29MXaoZdtm4t+XVRL
	 DXg8Qa8KWagTiqEYOqqOm0rhNzcJWKsGjcqqrGx2nYYzfsylmpxqMPoEmP8vFYD+oh
	 strnDMpfxxDnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD618C77B73
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 10:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168336948581.10400.3977213708060748626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c2650f513a7f2a634ed4cc6bdfb2e1c0b80dfd545340eea86c4be95fdd0169
Date: Sat, 06 May 2023 10:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683369485
