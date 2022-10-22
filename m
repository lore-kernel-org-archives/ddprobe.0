Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91FE8F65
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714AFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666401653;
	bh=JgSRzABCbukZJQceJ4Sl3nfIi7E2ZJP8QIAizbwtxSw=;
	h=To:Subject:From:Date:From;
	b=Kj+h2ecwKvWru9ev+Qqems0SBlCR/x11f8eDOPCnJbkS4xvx7JypxFN6n7LyFi4PB
	 n2hiGhFx201m2lqlPLaPfdbJ7WgjMKSU3h3ghV+zn+MjxXyzyWwWHzj9nh9fXjIce9
	 6++GxldcZ5tzr92lAzDUH9WsfjT/Vc7xJJfu4ULfrsRYCF1QiT7KRnb2Yvtm+gn9Am
	 +lKb3S72368ODk4TO1E23jVOz0dVhGlPUKKEuXYZsWcvbbFPOar7Ahmgzs7gfBidXC
	 gLPxSOizXEozc8FvQWGwQmaJ86J6fQy3s/vNIkPncKuVApfGAAbykEF0YXLHEfZvBM
	 L6C4l/H1z6BAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F90C38A2D
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166640165333.1403.16124401835532323439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dcc00b842846f3e44cf2b0652d74575b6974638e80989a2346f07a99eadf5ad
Date: Sat, 22 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666401653
