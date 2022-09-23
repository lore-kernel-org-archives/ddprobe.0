Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C630B8B3E
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76762C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663914053;
	bh=bl91yNvSWbltoYbDMswtO67NrOtWymZ/0VXFI1U0aBw=;
	h=To:Subject:From:Date:From;
	b=lTJ2kYKFCZweFDTxjLWN1/m/lwjj7kLQ7NotfNmvx3GwdYi2YU9gqQSVsEvp6ymDm
	 jnQqMdp1FtvOI2Au8MBljnwdXxdMFS0t9BRrho6+AUMCNUW2D9+F17bKxaHGr1qQHt
	 SGi7emogeN/iCO9sdPvxzAy8qusSAxGUDs265DoHp4aAWducXyQkxD+Q32yPhZdYJd
	 azyk/H0f+OlgHmnjh8rW2bqyzktf9L/fPDOGNEITkfl7OHYG2ONC4ErxluesRCoCds
	 a1DxLwj8Ab/MfeBB+eNq/3gWWUnQ4vAH1j87th3sQxQeoKi2aPeqQDNQ4lY5WB0nhA
	 DOiKANcPDKd6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561AEC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391405334.30311.16003554087490617778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58bb2c128ba666e840cc762f2c2148323a70e214dea0a825453967703c3fb5cc
Date: Fri, 23 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663914053
