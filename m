Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6449615DA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 02:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5753C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 02:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690511528;
	bh=0Rr4EOWFn3wAZNYLwaEzcWKKGu4597K62RQAKnNvk24=;
	h=To:Subject:From:Date:From;
	b=WzPPai0+FuAhjZQGPUi903XKIVrOEo/OBiwq8ZUVUA6FpeqgHroQFNKftrmcL0jj1
	 ubF3iO870/QleJACW82NRqljSc013yV8WQUL9KXvggFaRv4ORUR95iQ0K+GTNQPRkB
	 oKpko5w3h1y/ZaENYWNcCYzlOZEMi7dIgqxmKd02pHds9ZplhCyfLDwMntDAaHEpGt
	 zsd1nlWIaMYDcZqkgXllTZvmQYpOpyVsvhPsasl3UcNNLYui/irP+oiwJDZtGvKmrg
	 L2NPfHcnxcO/e9D16Ghqn8nx+NKpx2/0nxZ0BaDk9qgjujUjBD+cCtV4rac+iFo1oM
	 J3LdImwGJx5Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EB4C001E0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 02:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169051152874.24451.2579537366833267804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb4c18baa80d99266b1d3354843e50ece5c392e3a0322855dfbdd6c18d37893
Date: Fri, 28 Jul 2023 02:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690511528
