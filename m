Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1365620
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AC1C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665795653;
	bh=Nmvnm+Lanw8HlOLQauOKJguTydgFavTz6+UKq4xjF40=;
	h=To:Subject:From:Date:From;
	b=Cy1xvJsKY2cw1y9s1FLL7++rBnJpJ+YFxqGK4bEJxgdEWr5zN+OikWD8MlzcygQBi
	 vd3bi6K4LwpaPxx2t0RCXodbQ6+bKk61GJgpfBKPM19B9hkrZWtXBOzCbnUQHK3oYJ
	 5k8xV0U0YYFX3+tOnCQMyNR0HA9Nfe0IdT9M7fGGKiIQrlVE6Km080DswkV9CzINi6
	 Tzt8KmHvYAF8EaU+NotkHTmCu1hB6w64Ap9KxN4AFUuqLwKDQTW0RglywILE/2dNhD
	 gfbLalnU/BmMwumxPMIRUSh9AMnfpSfUKh8KRi+4Jw11uVyr07zTQ21DuCxWKr8XOZ
	 0AJAvDjutesJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 577C2C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579565332.23968.17594133805535476679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e05e32b6d542e15cf55c569dabc36e950e74e1d75b2db4e31dbeb3d4a0e4f8
Date: Sat, 15 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665795653
