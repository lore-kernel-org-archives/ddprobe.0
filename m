Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7029C22EF1
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 22:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0DD2C433C9
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689804128;
	bh=HUHmGIuJiwAZVSpyl8I79Xsy7Ey/Hre439MbD+SxIwQ=;
	h=To:Subject:From:Date:From;
	b=bBE+EOIANvIuW8Wsuw541le364PybFnZWJgnqMB8mtosq9QNSV87E4gwqnMUjTsXe
	 +w5Pqn8eDks3cOM6o5j1KlVmi2BBcMeTS9h7DuiQBYrNe1+mP9pMm5MiqiZGniHoYt
	 y6jIazPGjj9v9/88PQ6OhxvMmaBvDx4siBbaQt9mVYTgXnrUqHJtvQsBgAgmZacUpx
	 LXcpABg8WYgV282MmB+NS2OmGA5cCHyUZ39egSYrSAlA89Xr/HaSDtGYetUiz+4Xbr
	 FuWuG447A6qV2ig9QQAgr+MXvUbdKv6WwKkmgpRxfJGtTHsp3DomfPp6WDK7a3O9XN
	 F8adaXWUlQ/dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7687C001B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 22:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168980412874.1216.3282885757794754063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6939a139216476924106391fca5ca39b895ed047c19b4a84b315b7e9294eaf34
Date: Wed, 19 Jul 2023 22:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689804128
