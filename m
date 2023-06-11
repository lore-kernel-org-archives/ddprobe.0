Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76BA71FC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 07:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F133EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686469326;
	bh=5qEAPM9KgAr/pP7YyREEQpPcV1ROXqAwo5ywxhvhpOM=;
	h=To:Subject:From:Date:From;
	b=qb1Z9WsKyQ6lgCj18gr4E9ie/G8rdfrHxWneeUJVfB08JE34Lti8bjE+t2tMjfbYu
	 sHP4egea/mTJGTUAz9+bZli6RD/Dl00oKv+/Io9/W49ONzfZXhYJqK340pkIVvlkay
	 9gYnLSRCTvr9FsOE1rg9mRaAvVxZvDU0dGP0sYRZbw0pwO0uiMGVtvboV52JQ75xR1
	 OrWHTOdIgOiR840j6+7UFwVIFlWEfzXIl6hgQUlqLLEnsWYfTgJihhjtbBa5ed77l5
	 KQI8NEYLgGy5VOlIUu9Hn4t7NGPYCb/cFlzRxeEsWyMP/Mq1ZR6x/GbKHwg0GHnWgo
	 cV17KLL4c5Jkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF210C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 07:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168646932579.19843.16263799044541429885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873f645a2d3479f5e2a923dc1560c444b4c2cd4cb0faeb355fcefbabf2bb44eb
Date: Sun, 11 Jun 2023 07:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686469325
