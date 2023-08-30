Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75821A2D
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 02:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD58CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 02:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693364048;
	bh=adtnPSRa0qUT4jueZ2P+Tp5c44AdQ6k5XDrfkAbHqbI=;
	h=To:Subject:From:Date:From;
	b=j3nACgcdYV4jrZenqvSYsZHHsPLmEx18ZjE35YRHlTti9rqTMNJVw2NhvKLlfPeib
	 3kfd8STsjTnXPBhD7rnfDQr/E9DRf4S5xBIwDJaEp2glZscgYit4UqFHvpQgRQFvEm
	 qt07sWFuuo38oEKmpCu7VIYLppAMXw++ahr04UE6ApG7E2j/fE0TPkK+KITZ4TkaY+
	 G6HMcJwHnUTP6ljJU8ulU+T6mfJVkqODnha7+pCYVyw8KGK1JW47HFO1f4ey8lpc89
	 al8316caneTuRsOTC2H+is4HDYuJUEkheev5BpIJ+8uaemX0AFJwJbE787u1R2h0VS
	 2NVTiHvGTF3CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC34EC6FA8F
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 02:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169336404875.18892.8129655565120355917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d067083040283721bd97c4bf7b73aa61d60b6a445a9c38b37c1126b69e4a33
Date: Wed, 30 Aug 2023 02:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693364048
