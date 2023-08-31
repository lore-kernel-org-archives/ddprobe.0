Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC596FB4
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 08:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE05EC433C8
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 08:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693469048;
	bh=Lm2n3r4TWCVYSVNSXq01r5tjPWp4kjzx/9vkWCPwoj0=;
	h=To:Subject:From:Date:From;
	b=tm4oghLk374TCLdg53/XSMfG6xnrQkafC2lwujby0MoISoI6FO3Z1NcFp62VPb4rP
	 /sOk5HvRgJNIyv2FfD5XpPhBM3HCh52erSCreWhBJgQSSto26zD0etl9QxG5QRC6/q
	 bwZwxRvoLD7AlcMDdCvXYBpVJzNsrue1vax36pR4oj+v4kYPaXJPVCUHzg7Yc2zX0V
	 8pEv1mn7ttdNd7pRUIDZ7O2gjKLXn2r1cME2lVqbMvMpahCKSVqgAurYSaDSvP8P3z
	 3Tw/S2avl0EsJBVZNz1335JPWbGJstyYszEH5ImxjeBW5u4832sae4i0xfw1CZbibX
	 CGuv/8FPsxs/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66B9C83F10
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 08:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169346904873.28801.11857401296998741587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcd545bee3115ab464a9b88bd8746e2d34834d976f0fac6eba267b43876df80
Date: Thu, 31 Aug 2023 08:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693469048
