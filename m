Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF807491
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2364C4339B
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681515785;
	bh=POuryPdEuaFyx+EZNjdBBUrwtiX9KQLjjdeJlypgGCs=;
	h=To:Subject:From:Date:From;
	b=kMky/pgX41Lm5lpNILVy4vZ8Abvnj3REOHAkYr12sZskEv59Mi24TdyW2F+r0ArTG
	 meL2dJZOcronPMVV8MAD3Z+0HQ2Ycdxc+8jEx0LTvZHTEKJZIRBUSgUUx1kWUWOyD6
	 oVI/ISZwMK1rkpT3F1Oosm8eU46uuHFgyoXrpOvSCKJQM5nX+EsCfRVDrti8nrGYPI
	 KKrdwEpRvEqi/Ru9zXRrrDmZm99S4rbfMB2E6LzqteUDibd5CEMDYFJcVKS1RUv/Hk
	 J8RKKFI87h/r0R85CPPiq0NHSXepmDYqmsVVkGCeLAvEt4ozJwL/wvL62vP1YUd4Yv
	 wVvSXEIsPtt/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A03C77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 23:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168151578572.3363.17957001604346774672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814ba281b28e012cb297867265861b975bf101a98377553cf344705efdc44866
Date: Fri, 14 Apr 2023 23:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681515785
