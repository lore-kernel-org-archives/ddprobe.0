Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6DB1872
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E613C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663671053;
	bh=ZRtPkPQ/BUCEFXcu3pckni4uMEhbzFvZ9F3JVFA89qM=;
	h=To:Subject:From:Date:From;
	b=HMVMne/h4WIrgHAuHMUEzTwmFls6cQWCfv+bYmrVC3I2XIL1CdTZsvTCANVZTRHxa
	 Z5/IGw6gSOXK+1qDIFYSr503tRg9WXKQxf7Esxkyi+VBPYC/pdX2QZH1XXPaDIym7E
	 SW3zYX8mljPi8e1D91gKgP9izt4lamjCqtuaytm//T3p3jYV6eNq3qZuyFK/IMdbvz
	 Wt0gePKH2jIVTdnrG9us84jXAXdFmCpzfgCLIGNhAdn/hVN46ttVG9OJ4Enwzdj4hw
	 9EPxHO5Po4wVSofgzO17RZsSlRfnbfPR+wfcDExTRI4kfs/B23xHfOIvntD1Ewr+Jl
	 2MCsymIvtA7hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 555F9ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367105334.3468.7930766853458000995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3055e176f3199af59e277868b59ebc83d0f295b1642f70a502169898eaf269
Date: Tue, 20 Sep 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663671053
