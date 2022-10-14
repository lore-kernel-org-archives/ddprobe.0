Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8DF63A
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A24FC433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665741653;
	bh=nDDjeZ1jqLkSzCrjovAOtcRo53qZsepB+1IGVIgE6CE=;
	h=To:Subject:From:Date:From;
	b=PJWBAY6dA6WqDwNPYyBXZwEfh5cm0QGinTOS3arMGdWlW8cdaUZP2P/0bUZM0qRMg
	 hb3Tlbw52FKXEVdIv/u1DNamWQvjYbRTY+NT5UPA0nk7pbNv2wcj1RXHSNISEULv9H
	 UjYjTWgSw7Uym+AF8ZEDvlTt6aCGU6bhQ+6CENW6mLrx84Q0D6RNUrRCkAa2nCqgkO
	 B/Jwatzo3j5t8nnvzrFGTfX2nlCiOqCHuzyNNCAQbDqB+RfKxiTECAmcsLx2nKuqEb
	 Lzenos31YH45F6hDLqCICL454fX6FGhImjjLRdQJAd+TjOz2ZoyUPdkCDAfkjWB7Jl
	 /WZllaKb23WVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76A07C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574165341.31449.15013132159417454610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df11738e37ac7259987c31809b507d756169f1a0738c3d08bbeef8cf06004de3
Date: Fri, 14 Oct 2022 10:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665741653
