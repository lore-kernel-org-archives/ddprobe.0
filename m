Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E0C320F
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 17:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D20C433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 17:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692639848;
	bh=T5YIheBCu770u2r3Zfg7bw6SYPP9tfZRakwPCjS0OlY=;
	h=To:Subject:From:Date:From;
	b=VoArpXJmI8dqoEtNE5Elo16CzZarvi5w/cvDoHCM9jQxVmcKwbJzNBIH4Wdq0TZfZ
	 N8VTD7Ht2qnYHj9ZGWqwdLwcEpRETuKzQWDa4muCmGIsr1YyyKWSNdChCAjsjYpIxQ
	 by4oonSooGuQK/uHkDc0LqHet7DWhSR2pb4YDaFb8NxP8/M+DEodKd+cERdL0JZig9
	 hlY1u/FMy3m5pcEVQRhz3auLqptzyxGrplDk/LyNrsfzABLDT+LSjg9v/FrHoqkhvI
	 zgQJpfualuPkO/slKF8xJv4Lqo7/2s6UB5u9uO3zJ/tY/eb2kN8rLH5JzUxkSx4kMo
	 m/ey5DfCcHNhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AA4EE49A5
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 17:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169263984867.23695.12334282205043483933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37596b3d1ab50cc26c321ac0189dc73f82476f3b44f85a1e5f0b6603be6c3a7e
Date: Mon, 21 Aug 2023 17:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692639848
