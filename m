Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE461FA7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 16:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A1DC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688746628;
	bh=mJEAObGFfMU6NsfhsYjtjf7JiIiKi6hl2OLaqaQMbuk=;
	h=To:Subject:From:Date:From;
	b=SOVIAkSxyBEbcmGkpxbq0SXCOi9uB/NLB5AYPPG70omGtzHOQsTU7Zasyt6I3YMby
	 elb/qS9FQJ12tNJIu3uExCLfsKp35lRjiQXpiNzyI3NOq5ykcgz1xxwSwXi/545gQF
	 29J6d+zZeNffXQBaQV4aE7mOtrC45edvjAGGg4o593cuWMi9isx/kpFdexbYK/Unq6
	 lxGSvqWs6BjOug8kXK9fFImU7JzWtCPDkhsSUKIT71VBrOv8BnYBum5xca675rF+49
	 RGHE/O4bmunBuL5pDGrZ0P/QNI0UYUBmaKbwSnQIsxAg7t4+CmwPqFZDI9PfVRO6+z
	 p3kSU4zqTy4eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80E1EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 16:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874662879.5507.4699956298377341468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7395384c2c3f3c0257ec3fc470ad234c3b589c89eef869ebd55b1097a48b7f1
Date: Fri, 07 Jul 2023 16:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688746628
