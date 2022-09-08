Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1DB7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B97BC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662596453;
	bh=ud2zLNzvhdQsUXYjvb0QwxrbPtgsx9OkyR9PawKFFUY=;
	h=To:Subject:From:Date:From;
	b=K3dNZxqCLVDT56S18ka+VEMpPPUJ3EKGJIFIcHYu02ddW/0PZvvCOFL0NW1vKtfqn
	 e4fEESvPf57GK0OEGvuvL1B88QfjSchd1kdmOJFxPtQy1n5/ToSh/KxNbNSISMzz33
	 Zb+pMu8+Si0/GD6veOXlzvCxLNCaLESLNBfxvzvy1q7kJksPxx+7rryxx1n105ucsY
	 A/tD3CoDjIEVvPK1GNmUCXmB4iNWKER1IF4fsCKc1wPPxPD2Qv2mEwhNAVOfWZ6r24
	 tMzptMvg2OZQ+O7vZw2JEafuxAkZcHpw7DVKxqgzePZY+BdyJ1+4T/Yie3dYrMre23
	 wWNO41/rTEymQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A09ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166259645333.25333.3044776708825279946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5939fda65aff506b0904469d1c17c4df419660a2806e7adaa223978005783cb
Date: Thu, 08 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662596453
