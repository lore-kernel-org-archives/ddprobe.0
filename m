Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C301F3209
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3DEC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667757654;
	bh=puwJHpYLDMSlaB9zkklEfUx+A7cnELzLCtBcFZ6vTAs=;
	h=To:Subject:From:Date:From;
	b=tdox5P5ymmFvlgQkGArXV6ZgeD5k5SA1hhWkz+3OJNLPp3uBK8AIun3JkuN0C/ohM
	 zxpPbXxCPD5X0po598G4cNBjOgvXA/8cni1xkWKgK29JoA2Ww8olEE14nzxZMczMop
	 4bO592bB7AlnWogXFVsvZm7ZQNfw5/SpKZkO8a6BhqZAQDTDD3PidBTKsnmEKvlov3
	 kaWa8vaKFrrS2Opl2mIFw1vjPwbjeyJIdPoJhHHE2kW8K6ZFzfseLQn8YJ71h5OiM4
	 pYU5Zkt8b6GNdrUlSeaCGqWMJ0lkPGyWYFxeUYvaKNN3nPQhrgieYsxiSmFhMkDmmW
	 bgkkIzWJZ+OTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5285EC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166775765433.28713.11826442143922260338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78067e68c133c9feba08a6e5be1d63dd66196f8b047b8de205e5d325eca8cc30
Date: Sun, 06 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667757654
