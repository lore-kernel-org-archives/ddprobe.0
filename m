Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E041963C1
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81908C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673704287;
	bh=I+rtJ1OAB1h88QqVGklRlgr/R2Wnlopvtu0xe4LNJiE=;
	h=To:Subject:From:Date:From;
	b=nhlklZXh+DMaHpZSLmcxoTmr7cQdvF9o1u0wGG6c4uE8DCVtn7pQYtJqT5bv/xpvr
	 PWiB6B5TIrKhRTfKPTHVbviAhngXOW3JXrpXaVjIO3yxDN6vTgBMK8jd0tn3pltNKe
	 ikEciAVZfqez57pOdf1Fhpif1+OR7paLdb0H/+a5ZOgWDJDmS6toyitL80D7sivGqe
	 kvY+lcOMlTBIBQhQeAUMeQINwRlgXE8AoXUUSs1hAxHg+fy37HawrLyS0zZau81v2i
	 bVPZLZ/ggQY3gT0IDjOb3/s8sS9zX9FxvVmxyjF9ok1raXJC097RmEGIuRkC1iL+Ro
	 G26fV2oA2BKSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6416FC46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167370428740.10597.9558780508355570258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df1ec7d22ad0bb27687cd5e6418db0e4a53b3bbd605b3d3530bd481a7d74ca69
Date: Sat, 14 Jan 2023 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673704287
