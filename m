Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B39677F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A149C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662960053;
	bh=zFSdDpJ4uzZF1nGszBzCzJuWxM782V1t1qx4tqDF+do=;
	h=To:Subject:From:Date:From;
	b=o2xq5fxItVui536EMsO+lY0reYd8ZPEAyqCNXoYbHL7e/p95ca6m4Imo2/Y579/1H
	 JSgI24SPLNvseAZbzS/J6m4Sxb1uDUv124x5G2HSFxowmmXdwiUCKSKEx36Kx0NmM1
	 cZNzS+HIUQ/G5jo0jfQwGfy9/vAs5ijsby33uc8xIhqmxN9cJf3tEECUm6sh0gt8j0
	 MYfeFcTFZNpQQ+YJzF6dU+NrCs9VdWrGIv8VFC6i3izf1JaCdEBpHlaq5iXpCnVe26
	 +F3rcyNzOcHKYpwRfKuOt5K0d3ZWSiBZJ9EktdQD/5cncEqNcM1XO9y3nwNKMddQTZ
	 RL9pVtCO0msOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FDEEECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166296005331.29890.3876992177812899560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa62ca841fb0b71ad6949077391549c68668a256573e8b9d250610dff221e105
Date: Mon, 12 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662960053
