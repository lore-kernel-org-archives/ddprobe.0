Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BC41867
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15A4C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694156648;
	bh=ytuEcqIbWkVo0vCNt5eFA2S+JysSBZx6CQHVDxypajI=;
	h=To:Subject:From:Date:From;
	b=RyjS0vsJhb1g06t5RD+60ieEqxtpyGOQ4TKIxUK/rpVE9qdZ7QFbyBOW/4bHEHIPx
	 LEzaNvcYyw1H60LRIr1V+fo1kE9TlvSWdXPMrvy/gQGesY0JTSMg9yAQrrcJ26fsTM
	 0G0ddVj80//VZaRS22QGojnfbauWrAkxRgMzHVwF6Z3pW+eH/jOePFYMkV26d10xWe
	 nuCE84G+M515A+BZTKfAB7ulq6VS3+Bq7XP1wY/WhPKoRng/4AvBvEloVtKmteTGUh
	 z3nBssLC+a+VBLmWxW87uqhQlMpNvLiSyNZkVP09OzSQ+nteh94hmQ7tDRgdppX0HM
	 BRFzMP7fLkeRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2297EE57D5
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169415664871.13284.13969298026356088247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f763c1d9e5a8054da55651ffa5246ff8374b7146aef53bbf2919883ce32518
Date: Fri, 08 Sep 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694156648
