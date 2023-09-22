Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A7E61F16D
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 16:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD240C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 16:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695401708;
	bh=u70AxRIpNjSt6B5sIwhld8FY/tvJ4kLvE/QjAwTNGCI=;
	h=To:Subject:From:Date:From;
	b=pcAzU3hZVtP2muIi3fMwueftw5bPgsSXPddyH+Y+aU8b92XMv6JRTqb/aQ2LhE66W
	 XiWTQ1h9bWvplgSJZ6S41HTzyKHWfgNUdppwlinlCnTEQNziwm2hRDbHiiPbXmdWcZ
	 //opPfhaC/bih8qhm5hBUAH+zkGNN5GhxTJQyAcdFgtlmD+2y5yWouater87omCAOd
	 YRwwOQuopurcBXWAKwZPBXKQHQwtKSwBMElD6/lzmn2ereEe9R2oDT+gaVtl73OV3X
	 U7gTjxz2IXrAAXf9pFnvpGbdOvuLAuR1G7+PpxyIJo337bUnFgLFvDVlr2EW8wiCl0
	 YlxVz53Pkzt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6182CD4844
	for <ddprobe@lists.linux.dev>; Fri, 22 Sep 2023 16:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169540170867.22381.1933457655232619320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0596568b9904717ebf1e78e97f47bc61e9d6ceebd77830bafbd440048092bdd1
Date: Fri, 22 Sep 2023 16:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695401708
