Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7633218B14
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 15:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8VEAMwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DA1C433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696694228;
	bh=dYppxWLaOKcUHE944BTlSRho/YishaGZpmEZNgvk4hg=;
	h=To:Subject:From:Date:From;
	b=G8VEAMwhsqPw9gdpy+8vbDXpb8oZQFOr5ZGW1J+TVLdb5j0f/XvQrvq2ZJ9icZNVK
	 4JaLVVWB6eUHpDiqmrGF4/60bZxE/irJAHY3VF+qJTefkBKAHvpPirzepj6Vtfic6K
	 t3GimvWTtcAd1+A9TshuvFq7GR/OSyDoi1yfpFhts4RyZd3d7Y3dJ+01rTnYqTanst
	 lrJL3VVPC0Y3EBWAuoHR4Ewh0FAVl13qnC6HwmakzVwrn/XordEv8u4a4qS8/vp5kE
	 kVLtYaAJldiPdyK21cripEwZ9uUtpr/myLYUxVMt5Tt0/ideUbwIRr4MhH3roUX6+T
	 iE2BQ06gHXARQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B085DE95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 15:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169669422871.31846.12548185934554078823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43baff9c88e84e3cacfd116740f151726b7ebf71c69e4f8e6825cd1e618c93c1
Date: Sat, 07 Oct 2023 15:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696694228
