Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC235D750
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fag7VhYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 927C8C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705047496;
	bh=S6i5RA5NESCC6ltyT6KMIsedricB/XDeEU28py5IRUc=;
	h=To:Subject:From:Date:From;
	b=fag7VhYFka1TxB+mZ9EmkYzvfltNE3rNSo+yEJlWaLsrVoTmVmSdPOK2ezrYxKGVD
	 96LEi1duc8X4ke1Dl1WCOVuaLt598dhZljLQGjSIQ4EXwmEIjYHr6Tck6coU5FgXGi
	 JCm/92wJMjAR+s5oDzqsRGAkXvpUPSxajfXAgLZbSMFFaMV2UL7Yaz4niiG2wOaqMm
	 Vjw0tYDyM/fLevSJkGtRKZ47uAwQ6xyTi+yyuoiHhYIcwgft0voq6hPnc1p1qda7tN
	 YtmtNA6M5myP77tdTZjtp1JAClUBPd6j4i29J0AiTF0JmTSRLIzV1wcdzPg5VApiOI
	 ff3jCbf6phRrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC48C4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170504749644.12590.16092393171536236152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852cf7e28545994fe3544780d09baa3eec3cc2524cb3423b03b011bf0c0c042a
Date: Fri, 12 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705047496
