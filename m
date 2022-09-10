Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E567E5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A6BC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662771653;
	bh=HaYQ0Yd4aAUVr4Mz6/++DU3EWRxvGONjesMiDfCiEUM=;
	h=To:Subject:From:Date:From;
	b=tScGYBKtgSZqwH5+/cVTQGqh4LEhK3/H+/jEB9bhq1SArkYkLHXcY2+jEFd6Sm7Sb
	 lG2nT3d67ylGGjZnoNqriXveXyLXfyHtk1iuD0Byjts8mcxAWUfX/zZpDX7KqPor9n
	 vIrFKfexMTRBTMK3eI7h8K0vL1GgH7EvsUdmMUYPnn09Ujyzkt3ZZjWiQBut4kGiKZ
	 9KfKcEI9gxUbjs1kCygggwyLBPfE+1cmS4bEJfFqcUy5x+xuhc3TZOk3X1GlJahRC3
	 T12mOZWGfDgfnZ3V4EYOpd7g691X1SApTI32yffNLlh4CN0RpgmC2L71qST0N70zjh
	 PniSHCLhFEsqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F355ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277165337.13005.7348894940897536612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd190865dffefd22b861a2c8113af87a685ec278038cfd6303fe46770da82c5
Date: Sat, 10 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662771653
