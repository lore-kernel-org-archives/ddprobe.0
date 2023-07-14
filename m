Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71C1D53AF
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 22:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92F4C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 22:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689373268;
	bh=09yLk4xvJz+XKHG+zBoe4U+JKDVGVqoBKgFkhGvlgek=;
	h=To:Subject:From:Date:From;
	b=rAYEMNXJ5CPPDb+QvI/dR3P0bLp9GHz9BCExNE56KsTmy2f2ZJDOHEaLTA9vnpuD+
	 kf5K+csEVpOt1aYeKB/NTvSEi0K6FQM+XHSwSCYFD+R3KTJ87lpdubT1Z28RWkvozj
	 8V6lgMGXQjvc9FfjmVPXGrKegNDULsv92KD7EnVEyPwqx76aywUdNDaKtnwfUWfjto
	 0P8INFZ1n4zdlz9tawMy/7h5Vf4HPHQFvrwCufk4e/7i9HNTb38jw0wpWd9w5/bSwS
	 hMvBrx/2JWf9KyCUekcvVrqG83n7DcXEHNG0iRfQKxSIwK3/kQ1U9HR3DqfTYVU6r+
	 By3VCsFn0RWDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E9FEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 22:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168937326866.9195.5340241415417831744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83d5252d56d0d872313c786f3b245ff323b691a772e86a3a579a5420205d456
Date: Fri, 14 Jul 2023 22:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689373268
