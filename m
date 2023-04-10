Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386A65246
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 19:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC7BC4339B
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 19:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681153925;
	bh=Li4MgbMPZzeRzpR8zi+9p0JpHshkUgijOeaT0BGxPpk=;
	h=To:Subject:From:Date:From;
	b=V8mXpdUuByZoRnD2fUu7Ygwq+rr1tH4iZZQ8rVTHDZW68H1czCZt46ze1eF5T4TaY
	 gHKF7jvo3ZtqMfSTmn349zLHB8YiK4eFLRl3lnbrG2wrAOrExP4HuMkyGMKIJKX+lH
	 8zee8Lm9hTJsYWvL72RHDLsxFLQlbdV0/0too7+slv8sighCMXVi3fZns35R9Y9Bjy
	 UEPpsVNaPGZw6mrLj8K5xgIwVH+UZnK+rv+7BshiqySDZW6ACAKfDFozHOoSGjOaLu
	 14QeQ/EdBfPcxFsHnBO3J+gLzd/uKTzWK82JSXSdUTtmrPyzRLoNY4r4OoOM8InfLG
	 7tSyD3Gq3ZpTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2ADFC77B6F
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 19:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168115392578.18893.18159998591957075210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5a5541eb691b54a8d1c43de7746cedace31ff1e793de6fff1c136b10d93c27
Date: Mon, 10 Apr 2023 19:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681153925
