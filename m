Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1D6715B0
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 653C3C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668616254;
	bh=gzxYs1fVdX1Ao2bvstMd1RY6+KO3w91vVflD0G/i4/w=;
	h=To:Subject:From:Date:From;
	b=SsJdvqmh+951Jet4BsnhLLE6nxhXj7qguJN4C4U9H1/26CiWKL1pOXM2Uq9WUyCio
	 L80oZJdPK7tx1VFjyy9vzSdS9Je4+zNPH/0/l7LgHGOeshiG341AyyRCFAnu9VHm7g
	 fSHTMp9t/Yt6UxUYjGZRiaxU4kXISRVWZ8ci+ZKicFX5v9wIaXAOgV4xAUUMC0O2wc
	 GRbv7qByQFdpRacDBLVH/jOAbm+vgpLcDJD7v+RDNk6GKcoVfmiksdtCgkfYtfCThB
	 1KYSYxXatiIKaa2wt6ZGgwbZ9XnROmlVbZO6qGe9VyeonQKepbTCbCZHKiFcZuuLIm
	 EMaaav3Kyhw0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF05C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166861625431.12446.16442832490909083211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f3045eb9f59b30ab96fa172d94bb771ea8fbcd649bff40dc2d33896c503c0d
Date: Wed, 16 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668616254
