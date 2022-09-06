Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75597E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750B6C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662487253;
	bh=In/tRKO/fS8BzvNWJIXtCI0Or6QxwSTzBISk0yzYkoI=;
	h=To:Subject:From:Date:From;
	b=aTWTx4tS0bMKuMen2zmPGesoyeSPJLKbVNswGyPbDi1XeRpktDn4MkbxIiffiYHzY
	 8jA1CTyqHVJgJbg093GBuc+H1P6QPNS5eeJ+M49HF34NnlLOFKY2vKQenN3xujYkcG
	 L7QzADTY9WFjy2uJQqF3vmRf0BOfRmI2o45fJzVkBv/rxVp84D0dJs4BnzNx8GvUTN
	 qeut2VF7lPBe+vUytfmw68GF2WodHhH96oG7/DYztonx7mITeGtq0OAKhuclH3/qT/
	 VMwGLOtHnX9j069q/HQJf78l6B9KMDrI/ZPdY6Djt4WqQSnCr56JLUKm+zjFCm3bAI
	 dRrR5uq9fDNyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2F9ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166248725335.13125.6944261232777469704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c33307e653d71da154b6e05d9cea918cabbac73c4070e5741c3daac9c6aa9fd
Date: Tue, 06 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662487253
