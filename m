Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F560A40
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqo0roo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDA7C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702788496;
	bh=Osgqjj+8Ps/8h3ItJbg/BkBRvq2bWiVLSjDbs+LZWs8=;
	h=To:Subject:From:Date:From;
	b=tqo0roo+i3e3hqLYDbpD+QmZ8K1DxD5ad8EvC8F1WuFqcYtjhh8h0aLq/JND/1uPu
	 KIWbCraqrkU9KE2tzdI2zlpH1JWe/4bXzNYRhLLTZbHvmiAmt2U4HCNobzLpDQn8z6
	 T/2XyOfHkeWauCQCvxcQMiTpYcPskVD0fjDHEt5p63d5F71mInapZl0ro8vCZyw1ht
	 glm10cHZSHEH/oLLpxJDDQiOBfB21SK/dxkpa/Q980xPjGPYLEYh9xXX5CWsY9IZoE
	 s2Wx9hRyO51e01rxOEP9cq6C443uAa6803RLuChdUegU+E8LAPf9Acc8zZP9amTccG
	 Q0EP0W9tan+Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89540C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170278849648.994.15617452271974497873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98bab9415dfc315fa1f4415a697c816bb82c06a6fd0643ac084ea4f47138493b
Date: Sun, 17 Dec 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702788496
