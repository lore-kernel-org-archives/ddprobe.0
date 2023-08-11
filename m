Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F37C1CCA3
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5893C433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691797988;
	bh=shlAd3rOuNVMKuT9/AjG0sA4Xo+s7H87wD963Z+5tZQ=;
	h=To:Subject:From:Date:From;
	b=U1pTc6io4z41L6rMOYjtgsLrD6rQZ4Sacz+FS/jaXMTHKH2ev5R6nNuMp3xFRaV6/
	 pS80B+iflgWE9Hihukwx9vbaODi/m9X+3Jgeg0jJCoEQ4miU0RPMjJuwG1Lb7NK9zJ
	 nmST4NtDYvDkvnL4zRTgFWMGrlinuc4YM+5CUhKfKqdbAhyNwxcSvlPR8eWirWvwG/
	 wOj+/8q0As/TD2zgqC5xqdY0Hyjy7hnWLhFiihegdfU+seeL6tiZClqPGPJYg2R+hd
	 lDVR2ppvV6NY+gaEv0eo+0RL8t0mj6E1WNXEtP4kYEJSrPYJTCgLqozCYEyiIw4np7
	 PsvBZO0A4caPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B9AC0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 23:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169179798868.28948.9813972710925315428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711699858df91f2e6e488eb61fcc41b36a0321eff1fdeebcf67346af04ee1bab
Date: Fri, 11 Aug 2023 23:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691797988
