Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6075E1ED43
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 21:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8255C433C8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686691628;
	bh=ZNgs1Fd2kcnnv2meqeC+TSUI7vS1HEcgi4C67n20xrs=;
	h=To:Subject:From:Date:From;
	b=loQN0HKNj7zAl+Nqn1X6GO9jiSYUJaw1IU1MRAf93rso3ceTc7ZG8Ru6/YKF1cAxO
	 VmPPGslDCoxVZ2SSP1CyWKPj07tPwG/LUGA09Byqv7s3Hw+DCMyG9Uk34Pmz3Pm5ft
	 i1BlxXrkGpFAKRQf7QyL0uIwcIIUyWP1tI9fC0CsKLkgDIjEyFl5idQTwQMzkHZedv
	 bnClEjI+sFGUS0ZyMmfZtV2BnICXG4T3mY45pCoqt3qx5p627cWq0OpH0SJfC1zOlf
	 IzWh2w265FNOckwWvIlQ7r8X3Nzo//Uf4vZS3eK3bLpIyQuF48Aw2MygVZly8uixRK
	 ZuXWyoV2VZL3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72CDEB64D8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168669162874.5486.5844318577441141973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8027a13d59d35382435341a8b3eb851c2cbab7137e21a1998a3bf690c8860dad
Date: Tue, 13 Jun 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686691628
