Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0597E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7787EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669516254;
	bh=IH3OnNDOlvC+qbmcoDXa00QLHu4A8spoBtT6IILoZnw=;
	h=To:Subject:From:Date:From;
	b=SE6OdG94dCINDFXBjjYadnlSV7wvn68TTn7yZ7mO4pXCjRGKUU5USV2NG/bWiyYpB
	 5Qh42lNKqhYojxnp3ZMNCldsTtvRIne6PxXyysmaI+hi81E6Cd2c8V/O16KzbHvvqc
	 lX17rGBEXOAiTX65AnV5sK4J77VcJ1u+8gU9gC6Edje+DQZ0n8y+eiS94YNNUmSUeU
	 AcQlEZcb9Ou05I60btYb1E1C+xklpCXU0yGfvYTz7fuY7ZwbYZP8VmtaCMbzUREidB
	 YM9BXaVnltTKfBS4pfKeWKna5rM/oRJJYXv4+6Ge716J0wrGUgkhrPAtPRmwB8t/uA
	 JMLIaRiLrU7xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58E89C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166951625433.7958.3227918071811096501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b27699e52d9d33f6585bd9c2713bb50510d9eae56c1ccec61b4fac18f0b8060
Date: Sun, 27 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669516254
