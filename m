Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398316FCB
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 13:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E075EC4339B
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 13:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681739885;
	bh=H350qAUj85lJU8H8V/RN8FoHNDqFGOdCzQGd9OhtXjU=;
	h=To:Subject:From:Date:From;
	b=qiweOkJi+yFeaMkbpvCICmotOak8MUhrTgaqc7PE9k2PTeKcXVOOEcYn3UwD/gnRJ
	 /IB85pEgvGKyz4A6ju1KgYMXcmFuv6rtpUJrRiy6esZSWsIudc1i2IPyjF4amwbLsn
	 cMy8YB7i9iKzGXsoZSdFUHf5keTHk79YPnNagqB6Q4vYxLhovJxKa05H+gtL7QVunp
	 u/B9+CaAGktvo2Rre9MhW4TcWgWwik+P970ZNlPVvAnUqDy2lDeUWm6OU0gPCjwZPV
	 UY6UDPRGfMZ8lpudSPRQYCyeEviD6VOI9lxWe8Z+Df0xu45dr6fLrOoB0dQ/USGB1Y
	 RQ6VorejcHGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E83C77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 13:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168173988579.26169.8555069991228584646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 998c7f4a9684f67c89aeb5d5b1ad18fa8a6a2b5d3197b5528c99ab375821ffed
Date: Mon, 17 Apr 2023 13:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681739885
