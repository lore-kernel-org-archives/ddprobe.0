Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A157F3
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 06:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D201BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691563988;
	bh=fUiSIMPiyvm9ObxcbXq5VawjkwEKswr/5jMU5x+xMTE=;
	h=To:Subject:From:Date:From;
	b=J7c/fLqVT4AezvrR6LlM17W45DaehbaBtmISY/RKD4sb3kEAR+NDTx0Q2U45t3NiG
	 XDs/v1ZOBXDGxjwauoz0C3EGu4fsqfW+ZM9suXGC05o1o3lYeNSACl3hU/S9DyInWE
	 JAh2ZH7kL1YUPpB4AiXYKRQ+OtX7GD0G14FeMCWBBfyBic/Qm76XoJo73jKZ122Znn
	 aQyx+lVYcqExAFHo/q2SXWYhkkK2sXMSlIXFmbmH5XfnXHYzoS6T4wuWeWs3YMUB96
	 czGHRe7xzFxARITrcccfPjnhPvSl1+Xl4d9YaNQQLDXDrn1s88CyMNq8AoZrGNkAiM
	 hhYzfz1g9YYEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D61EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169156398872.25182.12615957900991442166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 174250942034d1da0639b9f3d5003042895d9904781a0353305b220e0f4f8def
Date: Wed, 09 Aug 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691563988
