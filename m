Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8B5365
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F7DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664173853;
	bh=ed085UihzRqz1CF7vu8BNy2tQqaZVprxQwahbbEKib8=;
	h=To:Subject:From:Date:From;
	b=sFdIv7PdApa0wFymWzeT1UB6FDJMgL45gJ4D6+tntqv1+w2Z5dasZAPLsLcJWQYBd
	 N2o8c0t1iyR+Lxm2IPgJD/Jj8B5qFrpljTiNvpjBZgvvotorr5eVbm7BnfGWf2Tj7J
	 3LcdLGpjEzFTk1JXx9qFj0N4JqMpma5CNABSzzbjx8ZXGmHTfN1rOxAHN5+hZnrkIm
	 FwkVxUUCGZy/cUPFrTKrk6f1dMUAflzq1V/k+ZF7GNXZay5GXnAb1TFRHC49f0qeh2
	 u1sZo+KXQedAXEqCkvVi0PRJcuGhBF9U4TvjYcyvbNWa011g168zNZOY2pKzcoYCV1
	 LzFuCFlUMGTag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9E8C07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166417385331.6846.11833067017815046664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634ac2af5e8135ee71d9b5e48be92b7b2b0982cb2e163611e50084c28f9f6b59
Date: Mon, 26 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664173853
