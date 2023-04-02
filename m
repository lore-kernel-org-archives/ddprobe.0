Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375373205
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 23:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE059C433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 23:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680477365;
	bh=T+sfjSQyWBGAHrBwu9j2IPjE2tOsrdS9f1Ve1nr6izI=;
	h=To:Subject:From:Date:From;
	b=P6siuxhH/4AP7Q48czgzhqSNsfbySOhqU45lN6togLrbwo8j4u8XehU2lg/2LCJAX
	 lRgeK+125YfgdJJHTcHcQVy9l0PR3oxYOcLQ1UZYbgfaeaUNCxIeBzwf95K3Ngxgw2
	 jkUBZTzGkc8kZ/w8ISd2p2ZvJbakJFE1Cnc3EVfP9fYg77Oe53hG0J48wnKMewqf3g
	 hzNc8beCfmEp3CGp2XsBvwMKctumm3lfcHFNmRdR4CK0hLOQQVJlRzIFNlq/9ZUjUH
	 fyaoks+hr71yf2d6lPlznyPy9k3O3Kyo/tfGzn9mW7kZo7PqGj25hzaD0UDyBqvG/f
	 vhRtxBZEaBliA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F45C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 23:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168047736577.27994.1199350468769957724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a38bc9791b56d49fc2c3c2f9f23904bebc329999cec47bea79c70268a8c34e1
Date: Sun, 02 Apr 2023 23:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680477365
