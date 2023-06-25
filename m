Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E2862A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 03:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA422C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 03:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687664588;
	bh=l79QU7t/EO/4aVQPff+vVVgOC03d+BiupNDhlCjoMhE=;
	h=To:Subject:From:Date:From;
	b=dPvwQGjR30NjiRA0T3z3pZvLEQnodCbjs+fDHPCKrLiVebJmUMoVFRQcI8QaTT4IN
	 TjP0EAwc0+018Hs1aU/et4yxNv4sGkGi5zHsa4UAll3xbD0qDu5HWlp6hQvfWMYGYE
	 VUJ6z1K6O7d6ebbWDHbi6yDkekFF9uRgoFf8N4oQhYEBdCzJxnvW3qoWVrfNf66XHr
	 f7HqqIP5tQ4IU2VWmDWE46cA/2D+ykPzPFYm5bKrnTdlRStleBRZUH4uw3XdlacUZj
	 qUGcBXIEBup33iYfPaG9ONsLzwceC/fY9ch/q4c7RlyOth/FAfrXuSETQtgraM3+L8
	 6qS9irQ7bBW8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D6FEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 03:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168766458870.3641.11587009841060404927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01effba9501f6876be9687121c654667d3d1eb3eaa2bc696d84391a57297c66
Date: Sun, 25 Jun 2023 03:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687664588
