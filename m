Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6871617D4
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 05:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1B4C433C7
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692767648;
	bh=NzWukSiWfVfb+N7YTrLXrnd0siidhOLwEyLxNW4j+hw=;
	h=To:Subject:From:Date:From;
	b=N+oS6a8KxuRmcg3stR5DJ5hkuPtoisJ3j1w+OGBzUPuzeAc79oFz5S+hpFOFYE3Sc
	 povkbENl29TZIo+LWGsRigLABkpmHYs4jP5RvZRFhOWY/lf8qwfLJy3GqgDjAJoUEh
	 VlCsGRCNywAU/hwWZNh/51quG3xinI9hJWUD93PuWxXbDZAcA1gb/ySt0KXsI8sKuH
	 iCrg8tDOqd3IyWf+gKDl8b/BaenN9hm7T5cEdRHjT5UTO5oyIOF2vYS/mJMgbVsbFh
	 xaL7sxHShFfAtUmqVSPKS6VWANY4o6UZW1DppZwE6Dz9WERZ5qurBzCQMxokKr2u1s
	 TwmL7ZXunwBCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD66DEE49A3
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169276764874.9741.16022257357228193965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69f5a5e5c6e683df2db75fff5bb8deef67270cd336d16f0fa1c224286aee84f
Date: Wed, 23 Aug 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692767648
