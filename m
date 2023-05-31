Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C6CA21
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 02:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6D9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 02:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685500385;
	bh=G3LcFDUgXGXify8Gk4iDhWx96UBPuXXu3oZRLyLJy2k=;
	h=To:Subject:From:Date:From;
	b=BSMFqbGc2Hez5LCKsYRuGKg/HZmnzry3jSKQPbwkARDETKsGR1rNQkHiSzcGcIupq
	 oVCW+k7wcBuTcoRvWTSIUs5O0Bw8Mr3JmN+4+BmNApKHhSllQBh57onJUqflJY2FR3
	 rhY6oee6aMNx6xZOMrbe4hEYQNpWvXkx6YeiBIMOYX0MCFpsLOKe2flSKB/X94vmWw
	 DWfD3DRE91DaqtDCGgnGWoxb6NM7DmtxgkBDU5aJYT1IaBu95t3YdeskzjP8oFLnBt
	 e+3bLX1gt8IahSKVPCNSjzW1l/q+3+XABrfiwxJSwh9X0hT0ORvxteYgLtZvGp+PoK
	 +COoK1itNETRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C274DC7EE23
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 02:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168550038578.29642.12289424775210563944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9218e873c2acb86eae73a6bc6f28c212c05a14f1f56f81992f340f89c8aaf86
Date: Wed, 31 May 2023 02:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685500385
