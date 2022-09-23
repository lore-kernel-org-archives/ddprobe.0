Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA243D63
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69558C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663939253;
	bh=0CNv22vpaqS1NtN+qUsesQ1tfc6PkDdc+fTCMxr/iRA=;
	h=To:Subject:From:Date:From;
	b=GAmEBTJUAcET05NY3Bc6k6THZ1ETfFcphs7F4PD8KsU7CNWjE6UMoeyZYxtUS4CVH
	 4+qlmw+iNhjqNfCA8KPViJsWaEfkkmsRugWnufEGI1WuL2Tf5FVvsnfdHyB8obmqGU
	 8/21STSelU6fmHOp5rW+ZHD0FN7sHKv9ga/Mn19OpyZj3HtMcwRck+ZZ3YMztCom7Y
	 sAPm5LDvXpPz8Gr65PF/vznDtpA06bVTn3jvhXyzwfQv/jMM9Iy1OaB5YuWX3zVJyc
	 RLbeYOZvRhjiaa5KLLMBAyAwnTXCJYK1mr8zNF1E6KLIJrajem8Lo/cVz7BIfzDBlg
	 LvxGcdNHG2qpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BFDC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166393925332.2110.16636456796522700566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d256026311c26e3fa4c9c1f6465aefd7fbbcba062b5c185f16a14782e837551a
Date: Fri, 23 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663939253
