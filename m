Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC28366
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCC2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663388453;
	bh=HPchcErospO9Eg0rOz/fWZ16KDW/TO5NGYlPnIWFo5k=;
	h=To:Subject:From:Date:From;
	b=M6KRVKMairHI1jCfYa/WOxVMhC86MrXjnJD9UoeVmZesvjmWnZPwp1sGMzO0eaA0Q
	 AI9aecZlmOoSj9oN29ibOSHzloF3dJHyrZ1ePcR8R6c0rtuYW+mLAwtBVtXHaWJRVL
	 MJ6PKc/CUDSH3Q6/86qfMiFvqgdGL9E0kvc/YoBmniQK2JRdvDLCqm93E1pJFPKRKB
	 bkNMX1Xl35AO2pq6lzOjtw2O7R7V7LLWjNA3DgSmkOFSpIVZYLRTxDJmU3XMfohE+B
	 2u9sUIpd5p+q1+CZuyAJxEbPH3EqY5fzZXQIYKiRxAqzdyl6TZxKus36813+mUHy4j
	 5S1myYQZQ1YKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52546C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166338845331.30951.2514468606964223937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14c1344d201d51d31c55fe2aa0a66664ca7d8d2239f6c90c738958e7759755fc
Date: Sat, 17 Sep 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663388453
