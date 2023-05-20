Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C843D39B
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 20:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDCCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 20:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684615745;
	bh=GB4c4405qxDusiodzmTDhrbmRZgFeGpIL/IrvJC/f4Q=;
	h=To:Subject:From:Date:From;
	b=n5YGH/xgCupPbRLZyVsU+4+cW5ciNGAzyrDM9qVZaEi9yX1eeZinUVBVvtGC+OJT4
	 XTTrUm160R2+P84DSNuKR9rCqY7uDQ2uvM9M0tTrf2ek92Hd7t32yKOb3lgLaeVb23
	 yxfH1CqKM1CLQC6fADac+2TNZjsimMACnE7QLhX3Rbt27JwHYwCTL2/GqbccUrxgL8
	 AaLB6cD9qbVgVlgS16ZAo4iUroEX1N3kUKMAIPo5Ntyni6yAzzEzpc2TOgoWa4+ZUQ
	 b9r7byaaZtVGN4f54sd/O0o70Lu2w68g9GuVMTrTJDvf0Affw0ZprL3vjDdAKToLvh
	 niIqXljad1fCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9611C77B7A
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 20:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168461574573.10465.8266943124921566560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1de2563c31f3b098e2241ff3e5f1c7bd0735011dd20ff5291321b5571db420
Date: Sat, 20 May 2023 20:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684615745
