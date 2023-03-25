Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CC1568A
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 21:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D54C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 21:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679778125;
	bh=VU3bfsSPsgDYOAA3VB7o8OjYtxfLjoYc0i8a3dGlLXY=;
	h=To:Subject:From:Date:From;
	b=Z7hZui/yrwDzV/Jjtc0IJf6WM/fDLsRSRSIZHurJIl7VFpqPvZzQY+myEZuz7qsNX
	 AAC+FyzId7YQ0Ro6P/JxWXXr0xNrdmrkhYt46VaiFNpH5kO8jRDMEJfYl48q5iYFMh
	 barBb/QkbG45GUF9L8pmVbzbf/m/8vxdJEW11JERz0FQdIO/Lci9MObuBExU/SGcZf
	 2DjoNhy29+7vMmaa/cBr8O9GXw/Taj3Hu0ZANYydNTDZV3BzrlPXIA8G3HqbGB5im1
	 c84k2vqv6xA5LPjLnoGrATk8gkOT+mGmPUTctCB40kRfnPR8Zh1PDRPMpXM+EwgIfd
	 fCeE7rzy7f4gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9074C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 21:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167977812574.13249.6044974719432638036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac4655284b08f420293f79b681a50a2b6f26b6a6257696171ceb6c8b9ba169ca
Date: Sat, 25 Mar 2023 21:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679778125
