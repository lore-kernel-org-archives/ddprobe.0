Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0AAE4C95
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707DDC433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663326053;
	bh=mKT170LnUVWa8M7GxNO966ZxZpQHSgoGSSettj3zSn4=;
	h=To:Subject:From:Date:From;
	b=GL0+tnPBkvRU69IYzym9F2hUyWIBU9CrxI46yb2sss6Octw3SrzXAiYFPtpwvj7S4
	 mb13S1C6OvTFMLZ6Wigzk0t/9/D0Ydic5+jNaVbeQA3JjiVGjiE9/dAF8pY1LhzYu1
	 e0WyuagwW5T1kmK831a4tkIFSeCbENyweWub4MDPGPpts9O077p8hK4dvw16/rr40P
	 ZtxdR39I7emoKb0eHJCNYchT2O7MkAKcUgn1oNJctVFsGkNBYN1sf9Qs60PCXAe/4S
	 7ikfrDhG02KmGX54tjvsljAUKRJZ5n3qAnvH/ndv9hTU7MAeIIxLUASnIj5UjK4eOw
	 VKYrzX4mYVyhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A21ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332605333.4605.7140554696825435723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f835beb3b72f1eb088efb4b9991fbe891da5c5b2c4489627404242055065fc
Date: Fri, 16 Sep 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663326053
