Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CBDAD2D
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 22:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F14B0C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 22:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681770546;
	bh=i+CilVugq+ajyf/r0UVl51yzbvP64IXAWAAKWJMH0UE=;
	h=To:Subject:From:Date:From;
	b=lguPZJjtrwhpYvmbxkOzJjDTrkXPohXohgXlHWY4mIRFnzwPDetjL/WzIDS19p/p9
	 YVOdF5rmwBf05sp/jByINDADDTR2StC+23D33hcYEatFin+AC0mj35oNIfOYseK0uZ
	 7Xinn7UPqahpi0ukyfx0CL3aZSzCxpNHQcP7PUL8qa4EvKZUXvAZLwoiTAV1tPgrEY
	 W/fJiYBhtlCbRVYjnTcvdNr4sx1l8qOZGGJbi+w8RO8F4TFFGjkg7akeWvl8vybmBi
	 JmSpMk1Djmp/dKQXPFlPySAvcaWTh1XptP/ic+5+V0aS5AQF5OlFlaTKS2lEQ8CUwD
	 Bh4TQev3+0mVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF7C4C77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 22:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168177054584.13835.6001480908343473094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2a1ca599920a715513cf0443343915dcd6e1665ccce12d3145e89d1d11c737
Date: Mon, 17 Apr 2023 22:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681770545
