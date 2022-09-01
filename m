Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BAB7480
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BBCFC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662069653;
	bh=M6Pnr8j/85kgEu3WqcqmiYxOV6Sgc5XFPvEzYWz8xPc=;
	h=To:Subject:From:Date:From;
	b=i3wGKNmQ/KPDmRWWFsfuqm4Uq5eJaL1QCeoH0l9QE+JVm+rMq/qzFJd4IjmpqK7hp
	 z5ky7zW4StrfCgKzygA3Kgtr0Xe3HjBc8Ab8vwif5FanQ618n7z//rDpiqj5KuBFct
	 6me4Mt+C3+pSvYl0CbiPSKyOAC1gPEinODMAPmB4brzPpiBWvkt5bZ/a9PcZJ+ng+R
	 ISNc7yZIBvVNeoYtr++u8IyDgt1s/dYXDIttdy07lFkw+uvKeGQGlsnTxrQ8fBDkgN
	 V6ze6a/o/stMFiuEwSTd/2m9xiXfinrabKr6oqN+judKT+BW2PAcYH9BFbHShSOnQK
	 ogjP/1X/BsgYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572F0ECAAD2
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166206965334.20716.9860743917075273836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b0601f1a53f19f6a31787c1ad1d3113d9ad977a7bc9df9e340a3bce033d985
Date: Thu, 01 Sep 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662069653
