Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0E7A29
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4ADBC433CA
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690091528;
	bh=FoqeM3o+pB3v+rLrI08y4Txxg4/YqG+QUen57zWmd5s=;
	h=To:Subject:From:Date:From;
	b=IyMIq2Djx+SwIBGWVKNgL5xHoOHRnOranlx04TKqMICOUJnztsOJwOfuOkWgT6+EZ
	 VWtnfZvx7BcFtLlnhZy2gf7hdTrbB35t0TycrsqoJPRjiPZyRUEm7XSkbdFbWSTSap
	 nsETGQ1NgkglYDhKU6YJ1+gtS6Xj1LHFbM+wPBQjPjVtaHtEhscUQ3543RqZ7N4F2P
	 j1ID3s/Hii7o44YKAjjdtGfzsa7FzqRLCL1olIu+nWK12XUAd2JAuXjaQvnMv6i6vs
	 aheZOo6zIyxO7x9Y51Tpn0UBo7V5TZYWgN0Dm1Z/uPIcJmrGSAwKn+ObbIvw89OuoC
	 xKvuoNM3w82Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AD7C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 05:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169009152873.29225.13973108917622836465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47c931589fb53cc42ab3aaf9351d9e511a665dc6290b306f23dbbfc1ddc3996
Date: Sun, 23 Jul 2023 05:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690091528
