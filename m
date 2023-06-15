Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D01E53AF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 12:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA43DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 12:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686833348;
	bh=pqIwtd+TGkgKm+SuRo1leZlJTDKcQJNGhz6BdQ/pCCg=;
	h=To:Subject:From:Date:From;
	b=E7FmZWLLRTL4FxILv58kqmg1xuPeOaeZFKxp3oQlQu9YWQWM+wRh3pA39hIipTdM0
	 ts7OgYUpZzWrljb+1DDbXCjLVtrjQLoZJHWuuMY00wywsH4ZpYZTLNPnSildUscMXm
	 62Z/VwilV0Zz8pzQZRXM26eXP1sjFWGfOp753Me3uUEk7xvTZdiW2Nyve2ENCrULtX
	 Gh0/W/C/zxMqYEG+qKascrIHUYq0cqYBp6oOXbuaWTThl2+33DB6pzVIrot6C5GBPl
	 zVzb+8Wj9Im+nYLNvT42n0xzS3YT9WzQr3vQqaMQxR3UGK8YojtA9oNx4HJig4UqDY
	 FVwqWxCsY7Erg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A909FEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 12:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168683334868.9918.8256024104828164882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfef13662778af9f1821d712c52fc698926549e0aecdc4e41c620b337a25c4a8
Date: Thu, 15 Jun 2023 12:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686833348
