Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399D07B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 01:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8722C433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 01:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680053105;
	bh=urgrmWIfjrAU8L8bEeS5Vry3jOhw9BH9QuQ5pY1jmBc=;
	h=To:Subject:From:Date:From;
	b=L+ZRgPiQGO5Yi9s/AGbeovFYxE3yMzsXSjWfVaH6XvXTvVBTP8rNLZRnuWDdVSVMO
	 A/DWpmVT5hLx5x6a30++kRbm6o57aU3bZcjXj4kakeJhyPtJyxRuqyaGSz8DDsKgkI
	 uha7qw4kT2kc3kusYASeA1pHDS4+tfkKpGDFjrM0NeOaFeu2qCJ74OswdlJFbQhv/k
	 4Rm9BELSMl2VJ8iYGlT7X2JVC8GTNidxcPLBeT8NiQpi+z/QjQ7h07w0shiMR/KukF
	 kEGPbJ0Bo8/H6jNkfvupUhkDgGu7QcpCVIi8HWwxhShZZsAwP8guuOWp4BSvdGUtY6
	 8Jd5VJzQPdQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D35C76196
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 01:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168005310573.27192.17876880573184781356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c94dc986e9ee2dc77a3911a79f4153f0f38b7192b78d1dcc644025f0eed2e4
Date: Wed, 29 Mar 2023 01:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680053105
