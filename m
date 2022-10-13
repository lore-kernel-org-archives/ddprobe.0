Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B996D2C9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF51C433D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665666053;
	bh=w9TBgsYnp1ps6PvGuKKebxtwuzI52jOWtePosUGxXj4=;
	h=To:Subject:From:Date:From;
	b=dJrBhf9oHafmqF3vSyjdsaX1syNW/ZE+5dPTpx5Q6l/fA1gIAWq4FT0TvG/WI8i0n
	 qVX/G4tifjOwKOR4THtO0zhJEG3S8KwL+37+qW4tPQ3+snwDR1PQMCf3+/VJuyi3UK
	 k7IhCCpTLs2htoNPjMa4DVg4sm9vtpIo1ZpapbSE/CRrcCV7wdlYJztP/q723SOu6e
	 nU0VtoXqvEIy3oclSSrsmpdwvFechMxPgIuRK+kCzp40ixYtYwL4ZjxLuFqJiWjyql
	 RvZdKO6t8vWEnFXZIXeC3AOjmhR3AUk1nyWq+/9KjOspxpDVj5m9gN7j5JS9ut8/AT
	 nxcD2FTJ6f7yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5148FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566605332.19191.9866958727445372600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e60f63eb07a9140003224d763f26ee7003956c5d8353d464b0b1d99ebda17c
Date: Thu, 13 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665666053
