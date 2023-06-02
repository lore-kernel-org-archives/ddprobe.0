Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E090187F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 06:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA608C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 06:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685686626;
	bh=oed7y0cN/9jor7b0u6MxDIpLMPCYCzrhkdcjTiBjkY0=;
	h=To:Subject:From:Date:From;
	b=lpOMqvJSJ//d5LpFyW+KWrtGCDPSnScFeJUIpJWT0nfPKsITJG3ylKXnJ2tPyuz9f
	 DGWnlBjU3WP9ZNc2sg6LjkVwfiM27NAxQ00S2txzyAp6go55PppmHuy8pJLQQhvzaL
	 Is6o8a61JM8wkoiG+ZvLM1SCeuhlKsh/3OmNn3kB6dMlmD6i46D3se/SKGCaxgzToT
	 8h1WHe8AvwbFaR0/4DP4Av/xSTQLzW7PvvCwjob9Kv6t1d1ASNxGFVDWeAVRKDVsIY
	 Y6+Gk66nETyqQrfbL4ZG+qTPuTfxhgv2HfXZZtxYIstqqk2q7R5DpbDKmvLYf3P5y1
	 xMsLSxZjUHCCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D74C7EE2A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 06:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168568662580.14249.6611920984977826068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596db7301127f1307e58c4b37f437d5845f66f5e0a59d68fcf43405a733537b3
Date: Fri, 02 Jun 2023 06:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685686625
