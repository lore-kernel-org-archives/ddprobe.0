Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8B84429
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CCA8C433D7
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665693653;
	bh=3TQ8DIicLSr1wGbHWNWgbNgdICD4Mb71L4jbcTvMsxo=;
	h=To:Subject:From:Date:From;
	b=TSWb7ssNYBpTBmBkmlQs1l8zA9MmMOianEJzQJIYqLMdGayPMUbd2J/EXdeC2LTO2
	 ZlBj0TZNBGob9SY1HUpIqAzmCvAWuHp9rh3LMi/D0W8Oow8li1UTswSHqSye5qd+rK
	 Bm3e5+3dNCuALNSSqBjodiAHLxlWg61rgILSEBK9V2UjbB2TW+dB9W2iu7LTuPCJlk
	 FAkBxedp2l5KFINkyO77qXBpf1tUgJvAWUQ91aLqDHrr97Gt8pRazppW6wzK9JFjYe
	 ybDD/Y2KC+m7YtEjsR9+sLjsk8d3F+9EJL3/1oD5u2ZBe5gnMl6rqLJ8yu4wAZQahc
	 ubkHsT0t+nW4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5802BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166569365335.30953.5256903604491356399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccb112c33bf725026721f7f3f897ec80d79f7c13a10f8be3bc2909f378e6562a
Date: Thu, 13 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665693653
