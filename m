Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4141922557
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 21:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2265C433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687470788;
	bh=gMMFqBJ6QwtMzP7UonMLxO+gHC8p4OmILRL7AH2HSHg=;
	h=To:Subject:From:Date:From;
	b=QeJQIjra+BUQ04f7kgnbccK63wW0qy0EStLPyS2QHcHATVgVbyE5WgvGzzaprLaho
	 CxRRS+Ie3qJ6pzAldudrhG4G10BlUxaDjkg71unaJvPWwGCGlwbwdUYeUa5W5SPmuw
	 NJh/HrPb9jXEkkNrkTJrTRkHYOacdX8HG2wrLidqlzfBQXZm2YLksm6HaXQ75ExJ2O
	 1L2dt4MPvSUT8Q+RIF6ROGAoKTk9IDSM1FlsaOVNYloFHB+cKqYXvEb7orkcQTvoM9
	 dR5P0kSDQ+BsRHWxDrMqgE+6776g5YDS0Ctdd1Wrf3kjFkg2TO84xCPVWKx5EaPnAV
	 FEQsddgFR/D+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AE1EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168747078867.2889.15430740885453821187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca50933b9aa13eee6e2327757b5926755f595a0d4861af68318bb4b49ad73af
Date: Thu, 22 Jun 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687470788
