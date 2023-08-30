Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5FE15A0
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 05:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F7DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 05:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693374248;
	bh=Parrq78tPhiyNP4x3Dwcxl7JgGjnQ262ZCZ8Kpti+/o=;
	h=To:Subject:From:Date:From;
	b=m9Hv3BPomEpK0rM/xYdQlqDKE0uGtc9taPGOlqrgCDfMVPSXCD2OqMTv4qhIzWoZM
	 r7dO/IIBhga3kfisiYqbUSePEh7qHeoOtvQBcMeTONpDgLR75QxwCKF0upP+SFqO3X
	 zR2xUUvs9SvYObUb9Yotr2Z5iZMi0xSp2RiTTEVdrEUrL+o+JtXAM7bxctA3vLXk3c
	 Wxooh6CFxLNhkQ6BTtedyQznN+JOqE6PgU1gXhPZ6pFTVNROC9r15xbJfFmXJz+Un1
	 tm+r1tesQDY2Bdpph3y+OMkkZtpRjKhcUzBlfZndecJjgu/fRjJKYc3mhdZeuGrLSu
	 UVCBeFA3OI82A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF253C6FA8F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 05:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169337424870.2395.1625134501373540365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d1dcf4e1282322a2994e53babc40bfbbdfd7af16125e01f3122ff86a0f2cdd
Date: Wed, 30 Aug 2023 05:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693374248
