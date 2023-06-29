Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F4901363
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 00:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70E7C433C0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 00:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687996988;
	bh=HZnf/ncE0Vd8MgXELgizNW7glfuy27Fkc8oLBzwv5Qs=;
	h=To:Subject:From:Date:From;
	b=EQnl30b2OO7+bKHz86KpoNLeEKo4N1aov/beA3wK3J3HOa8fNLp5PgUePPDh/9J/Y
	 qYQMnvKVXSgZvFeZwWpAfasnzn6ldV28A+JTqljnFg6HMeG1dafGDjzkIpl+jClsFJ
	 jndP2Qv32g7FcaDelyiebHKLmKglpazjuQ75n8C9gX9Xi5PU6Iph2MDv80vi3IuQ+Q
	 j0q+pftpvLFuWeiDDf70HvGj5aR92+8VABnywgGf/hy8K7cv1bU1ofsugzmmBusQOZ
	 b9am/2a2wEnyhWRyvXtSpRcxSJa4Khh2U2Bd/9kIBqAqMHZy5AWeJ7LeN0GPx0Ii7m
	 L8sAxbLttjo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB721EB64D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 00:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168799698869.17368.10496084926093053426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8839486dbe076e7d89847136fc275e640b6e61237a0f2b26b9c81952948c36c3
Date: Thu, 29 Jun 2023 00:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687996988
