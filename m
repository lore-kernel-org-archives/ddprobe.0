Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2597BA41
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79056C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673727687;
	bh=o7VxzWFK4BKowfF5DmznR5qZ2ZyLk1mtkig3Ljnd+OY=;
	h=To:Subject:From:Date:From;
	b=oTCUyxHyP36Z1QVsaE/xZ08NElFKW788gYgCnU3sZAW2RmdaTN1F60rAvpCdvhpMf
	 cGNKHCXr/xPJ6h/gkWPv+JwSSHhMzaLwobIgmQZi2q9PsBr0MyaED8PGIfqSZ4ISGH
	 Jz9Z6E3XOomdyqp2N5buR/mJiXt2OBrLmqCEp3DyT4FyzzdyeLScHt/E8rojyW0bl8
	 NIxzgzSrkR7hMv0iaMQJ1bYM5eC5ICrVilHbmt2N38KVJKktQfR2l3QbxS6G242Oul
	 hoA76P6udFbSgF6RyW/LHoGNP1UezQvV17FJGpABoyAmx3P8O/U+ZZHfITxH52cPaH
	 s27j+XgWIPwNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE08C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372768737.27423.1947036944030176976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8570f802449f8f79402147202a8daa08bc7131b27ccc90800e3d61f5c1ecd80c
Date: Sat, 14 Jan 2023 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673727687
