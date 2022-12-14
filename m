Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E097F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E8CC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670982087;
	bh=UpLLKOhNgkgSSabwNqT5GXuslupCokAbly6I1uKy/TI=;
	h=To:Subject:From:Date:From;
	b=kjHPNWEHruBhDh7m0X7mwH2ff6qEKJ6nRu+jyqqvSEdjHNfh3WK/9y9aWTyqF4z0z
	 dZYTMCim4gsqoi3ROSYHqs5OP4LrIldzzQQKfQdoCwgnYaaZF8dIDZvxyku64mdf4J
	 NP4KLUVtAXpHuy+Ih8rsWUuGaUv+Dw/p3+ZA+JfNCHE04C7WhNERxj79Vo3DIwTh7c
	 I6xV+ZDi525Q7RRx9Xal5VnYXyfydCoK56RVLxnCk4Rhda4GiyWvZrWNw+1rc83nez
	 gZa2EAE0YQ5zGXBxneKFQhJ+V0fXdbtZGi3qoDuXA1s6jlCrd9nMzIGLAu5VigbyXu
	 A6OwZRUXvTIPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C89C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098208740.5779.17995044728909914999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b489b3ffd30caee2e8dd23cd9df30560e4fef28396f653819c03844d8bbbfe
Date: Wed, 14 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670982087
