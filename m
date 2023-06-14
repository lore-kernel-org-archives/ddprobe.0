Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529D71C04
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 05:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C918EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 05:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686721628;
	bh=wNfz+yVwnfiqy9WS2JqufLFHWQMzNUIv9YirT0uIeQA=;
	h=To:Subject:From:Date:From;
	b=TAHzuGsqjNs5VvhyBeq5EYtO763gIpk9qTtcSxpi4xq24lS4l5XyeEHZSWfu8QThH
	 7qW4yGb6UT/gsb7o/PGTMETM18Xfbmr/gY0sKFZqIqcfV3xB+/USct/4t6lcAr69m4
	 ImbL0ORRVFwjqxMUYcfSb8Y8pACXJ6OKUvM3RZAQzkLmXWQnEQPhlTzJMytG2qq5I/
	 /I9EA73+VkEXdd2Rs9h7aa5TnPbJ46I7KLxjO81VtxlC/l4nlqCDIF839taNPOA98u
	 tguCWIs4BAlO6R0MDZRznECMkWl33KoLKW3SslACHEFsqZEm4BtC7Y34gEVTMjIBD5
	 yohomaMh3Mpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E0CEB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 05:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168672162867.15771.1843559533053797117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d921c62ecd5b17c84c37a24a0d4cf07bed7d25cd413d59aefbc49e48a1db3c
Date: Wed, 14 Jun 2023 05:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686721628
