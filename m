Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EC76102
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7624DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666374653;
	bh=AqdGEur4IfqXklY5K6MhugeTLcT9Rl3LhJeWshDXRJw=;
	h=To:Subject:From:Date:From;
	b=b0YrTeuywgK98bDo4f7nrKPqOGtZlbG9+ZgVlILEO6A/RcSGGrVQmwU+6Cx+xosVR
	 GQ+dU+b+UVOQAzWMH2dEhJOVGGA4A48yEImuGMT62/IUL6exRbIlxV5alvKM/Ggn1i
	 uiCpPp/yaa4CLpLHemmTGep2Nu40z3i9LONNtsvXoRs4oljXQN2GECKLinvdLzJwgQ
	 kQ97tOGw8qGU1mgQiZXRz2k/LV67osVzUbTJ5CCdCiGpB5ca7sZsVgJN6Sr5G763QN
	 LffY3wW5aNklIDKhcOR4ybCRod5Do9SWC1RJRTlHnVlqXEBkabzfPpClQKSdCSnrAl
	 wHiyYV6gvof+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57753FA373D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166637465335.28361.14055046305242863580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a26e88d19e3f3cbf1483a6f0b7cc7fd8811a8c9d712d9b8fd8bd121832282da0
Date: Fri, 21 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666374653
