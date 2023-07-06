Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C302FB6
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 20:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16F1C433C9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688676428;
	bh=g+C7Ah8F+u5SRrlRJcInFUdumynaea6u5wR4bjQs9ZY=;
	h=To:Subject:From:Date:From;
	b=C+WeHO7J4oST8mIP6P9iza+LjWVzR/yAyGqERaRtRh6U/1iASpPCr5JOjrmb1SRS3
	 fWLEzkxuz2BOARvkHWdrPzwPbarL68ma3CiL0J/z1Q4UDbwg6KPl/lUsNl/PTaRfOV
	 tjKEM/Tc8QQDBGDO4bFGOOcY5/y17MfxinViM8WhfwUNDplmLFmaf6jl/Y6K/OASvF
	 hUqLZXFuPAyFzK6HWD6UjkPa9zRMoxMM5aiTvG4zeS7tIIkNH7MGa4hcqf6LlE1ubt
	 0a/5c47UPBnM6M/3zymmPF3ASbRrMcodfs0YY79k4ieKRJq67n9zTzWD2pbo5JW6uu
	 y9eCHlWKFsJHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAED8EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 20:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168867642875.26219.6539142615121186817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6056f9f0ab9aea096627985b6e7fe76708fbc61e3b8c62260dd23e9b754ea2e4
Date: Thu, 06 Jul 2023 20:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688676428
