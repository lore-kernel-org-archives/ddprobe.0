Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0E738E
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 01:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQP+BB6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC882C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696901828;
	bh=2yOzAoeGkn120jyv46Q7o8YCRsZb7q8mrxdQWDvr0VQ=;
	h=To:Subject:From:Date:From;
	b=EQP+BB6tKpXg9h2Kx0u9ZQ5QVwK6vNOK58WiObb9gI0te52yTMz0yhsv7O2ug/ZRp
	 7KFDw3hHZ5Rq1rsr7ZFWCnq0bWfMLC0n5yl1caFKyLEDLEykaQIevlJJjZtnXfamQM
	 0D82VHekv7vJd6IS8vDj89Bb4LMk2qx+d3/RpEw6vwvSdz/3nrV2A5v1wAudyOOLlI
	 mYVe9I46oCuKWsK9POHHx84rjIqswtoiDsFcaGgg/Rb0dgGaYtmQZ+JdHyn/32aDG1
	 TpmCNtY30JmrU6aVer2BbBgJ3ubs7zNUoJe8PSaW+Qi/HZqwSNksCLgv2S0b5WH1BY
	 RCLNiNkw9q/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37F0CD68E3
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169690182872.4731.15110293335238123653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5731d332c44a0e1c1b0eabd984ffe142b7ad19ce54c639d3ff63e0a87a2d84
Date: Tue, 10 Oct 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696901828
