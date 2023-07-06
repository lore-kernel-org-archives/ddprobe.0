Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9C110EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1D1C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688623628;
	bh=KfbaoFNPK5f7wNx/3CZ6G7do7qR2cV2Ip9IIbwz9yqI=;
	h=To:Subject:From:Date:From;
	b=OXdw12v6upUX1ftQIwtFhkfjSEyJ4okvHNi/jVO72/Cmv/IrmtMOyRvd7qBE5ZNI1
	 t7de/jLN5ZuFn6RCqREB4IiHUAqF2IGzB0/OZbCDkWHmLe7+yVMNPGEqga+8CaCEBN
	 3JbPh0z/M9w6G3RSPSgCicSreX1TX4bus6o1REK+EpvP1Ohh/B/4/tNj0YLh3LT/Jc
	 vOk7E/zx+x/9fmFJ/QGGSFwoegRLW6L7zpg9rugq9aW8iRLbbHZMKFI+8kyA2HmRoj
	 9LKIti+X89oqsg277YT4MZY0xXiHN/Asohh3cyi3/NNZXKQS/IIF5S+ThTjw5RMoWV
	 Pf9KC6Y4BaU0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F4EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 06:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862362868.19518.1176900888971024358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6212963453225e405f126cd569803b919740db92217abe261f7eab4a0f73fb7a
Date: Thu, 06 Jul 2023 06:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688623628
