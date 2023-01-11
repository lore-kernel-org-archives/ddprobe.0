Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA0817EA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9408FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673470887;
	bh=oCA+N0gH5d28FP+7IMVEJroK9HH4+OLTfNXA9Qb7BLc=;
	h=To:Subject:From:Date:From;
	b=EINZ6Xr7xeu9XL5raf4B2UU4u1CUve3gE3wSoKOuDU2DBGWOVov3fFp2/OnPYPurP
	 v32cZ7p7Lfzl4UlJvT4rFoinl8yXHaeOXlqyBfxcjCQItDs/LR3boZ/yzUdYX7SiAh
	 grQDYcxtUrksh5FWD2I/F4BEWSAi1xGOsaqLhusEtgIS4Qe+mRlMhm/77CY0hlPQKv
	 R9lxevnzYQCmIAL6h+tqXp4O6mxTg4zC6zZ76FGuTPzlZJiO2KIyMHNkbXTC2+NCB4
	 2R4hD+y1oxI0Ac1MuJUPqTwZgglapqZfoqQWndcTqc+2Q3xyh6ibwvN5NE3JeQeL19
	 36DJgmPzgge1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FE0CC5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347088744.28253.6148018910456377765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d23f34c04951c02ddc904654305ecb7cc164a36135b546e1e5cc18fba855236
Date: Wed, 11 Jan 2023 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673470887
