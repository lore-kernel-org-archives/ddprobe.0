Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABA024B24
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zktcfahk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88BD5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703075896;
	bh=Zcf1eYz780oNIpOX3jURdPIz45JXLNs2xLRxdAZ+b0g=;
	h=To:Subject:From:Date:From;
	b=Zktcfahkyyu4kiZlI423RqVSNNVoqCyjfb0ca9uxD55uOa99YEfRm7tWHpHB3pVeQ
	 bGFsDEtzDu6AMCF8/r7WDllK2cHNbqrDyQKv4MAxe2AgUdegztjCOOQkE/wtJFP9ck
	 ++0V4TDYThtK7Uo8lJruR1412lgF4L8r/6q9Fwbd1hlCqLIsHeDPOYWKp3EUjRMXPq
	 xOWFT99lU4BKQ9kM2711pheTB8+ukZeosvhrLoI7gHvfyPdrVsZY+ZO13a7YtvJfjv
	 dACjDQRQctf+Sq5i1YZCDLCwaiBv1Tv0OJ/YYQcPu0iwTGiaURLNiqidSVDoXP9/48
	 LQu8mN7bvQeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AFE2C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170307589639.10502.15089469384406755813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04fb3e23c42baca8ed39cfe501fffff1210e0ae70e8be441b6ac7f1edd3e9604
Date: Wed, 20 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703075896
