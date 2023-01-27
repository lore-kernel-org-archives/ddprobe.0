Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A18415A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 00:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C41C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 00:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674780185;
	bh=cIjBcu9+bWWTYy8JKUo9icUgTdQWz+Vk7EXfZk5hKDM=;
	h=To:Subject:From:Date:From;
	b=l+tdXRMx3BYDvkunqQW1fjkrAMGNYLb1S7aUHMmmWZGl4kWvPvyAX4RsVqCgEAG5G
	 Or8met7dw+mGJ1eFtBJ90rbe4k95QNW55DJTDS4ps3R8ZqVEgjQEG2OW2xy1GJLgRj
	 PQCf1KyjoqabIMhCMxIphfsGYj0lSayt68AkrzZHaNRFZOnnDUIABUhe0JCmlMixMT
	 1SDQdGvlcV4BkPKFQQBsLk7Fv8QzESg0nGUvoz2iIokZxsUYXNZNNPXKU+bEW0qWyC
	 k/sp/b6+/IVBLZV7pcd+2sSHGhKsmDUdvUOrngPQwNdnLr/20neYs1KznTbND8rhuP
	 3LmuYWCiu7slA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B705AC54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 00:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167478018574.3665.7186951264563690934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0997749c00efc1c9b92ce405bf9a29492e74889537cb5fd73c3b22d66762eaf
Date: Fri, 27 Jan 2023 00:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674780185
