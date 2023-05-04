Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407264A38
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 08:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC585C433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 08:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683188466;
	bh=Q1EtIUSzJPAF/UEPN0D0Udfx49B2Lmh4DT+L/Q48YDc=;
	h=To:Subject:From:Date:From;
	b=dSL8ZAQpC78UaZ0HUdi3FvgRvMswWRL74JdlUyxoqu/13BrpF3hrOh+mseNrqwxgq
	 7EKTSFwS8f8y3AfE6/01WI8tYmQZoHMD3Shx89qRxGGL3APDnioV+ZdO+AuuWjUNSh
	 hfbcGYYjgEFQP269z2aBFNusJ23TgrjEm5pMO5MLh6bR2VIRQRt4ehkqPvORx2v7GB
	 rSuXYykXxn52PjhJcP94UKnrKEtACllLRv/1N1qNnU9NmfmM2Z8I4hdTMs4lbIsvO6
	 sX7V9D+/AohFqkVvCnvRmU7Stnqf4L88n/uUBbJZ+jOPR6ZBfgdxRUGmfAhMpJmV31
	 peQGNOlD8Qs7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE6DBC7EE21
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 08:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168318846583.22847.13566406659036316416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be286576268fe827c6111c990a65e0c47929b314b5a5242da028d91becca4364
Date: Thu, 04 May 2023 08:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683188465
