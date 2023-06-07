Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797BA6118
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 19:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2997C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 19:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686164526;
	bh=vjcOnEfDntJ10JOFMYtd0iq4t3UPK/W3udvz/5XDvTw=;
	h=To:Subject:From:Date:From;
	b=vI07IhoRZYeOAQ0rjY2WTr7PIeOGufWTBGyoVVds0j/DRC5euo0+jKBRpLx5R33D3
	 oW2KJuMRLYXoME4yHvy/Eu1HiapW+aBpc/2lFgvixxPNpV4FNBMKJlysXUvP0dYB93
	 pKdMLfNui8GUNcHfNgLTNlpavPM2QMId2EVEBShRZguQ3ubYN5jf93tX3DB0Isnc1u
	 VYxECw/xGgJb792vx1uX4tKW3PZKqVJ83VDky2LBUyw6aFyTucaLiwZPA6nRCSrk+J
	 WMpAIucWiDCS1Bv8E8CTmBPbRTu5J43tgVHpJu3dJoG3tJWfJ+tepIvA6qa5ed+W4G
	 sepzW35vyQGfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1338C7EE23
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 19:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168616452584.9771.11791564626358550000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd35b2e514d4ca48e72ef8900d9c671f95a94143e9ed6c45f02b276802d44b3
Date: Wed, 07 Jun 2023 19:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686164525
