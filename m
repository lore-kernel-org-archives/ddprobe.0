Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D479D3D6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7399FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661518252;
	bh=nTNtAMnzvEawyrwUFrgiQ0rNZqn9d1VneuRsx5S7158=;
	h=To:Subject:From:Date:From;
	b=L2hXSW0VU8gICoP8K57IpYuPMCgnaRnK2B3RV3D+VofQaDVCpLuS7t9XnQFWAxKzr
	 l24PDxaGHwYlnMmx7O2vkYdT0/Aj6lIi/yUTp/4jXC/7Xq8DJCt9Zs3gH7SrCsrJj6
	 y3e+HLmmt90Z/iX4KponK3N3Q1ETYD4tDdfH3PZwpA+721JXulhWn+LEmlxoTHMBK3
	 PCEPoLSd/1jPpyWYHfd4PTmQXhJYfI2h+2A48cXbY3SWjBemtXtjdTYTu+oNLTMmxx
	 kzORcd1PzZvFCjspu3Cikd1a+3lAPPf6y7Vc/QNydtYI9ZuGFcr+XxYT7Ca/1+cABk
	 +vB5PD2rZi1xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59162ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151825234.2784.7955448606849833893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c28c249232df4099c2bf00f33f4c0aaaa7ed1dda7792180bd3b93fac0f52e08
Date: Fri, 26 Aug 2022 12:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661518252
