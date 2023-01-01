Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D9023AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E63C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672600887;
	bh=ZONSqL2yO2qE7ujUttiyHC2nSNIK14UvLqcytmcNWj8=;
	h=To:Subject:From:Date:From;
	b=LK68DtQv5yRfqYxxGYs+AChyvYLIxD3veM3uI/7EW+UWO9UXq2RuS6F4YIvFnAvYI
	 uJ9WRsgI7MoJc9CfHndDMOd4TgffutKUlBdO8/Lhz9TRw61JTcvkpwQmnOrV8R+9Mn
	 Af4jV7eRH3vxLxZr8X94cLyGj2ii2CcjL2EwRafBFKcJ9fLveNjjEytu3fvAcWYJOO
	 FoN0dMbPRgkoCaqE0B9gIPMP/I+BvO4Uub4DegptnuUkRsaC1Sma3FUcG+bfg9doqL
	 NOd2nTMyWJOWmkBKqgxiKwb5CZXDe8sSBzAjGtbnH5aBauEQ86UH8YHwXbDq5P6i7Y
	 iyYesIN5WXzIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65FF7C3DA7D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260088740.31306.12075657715822207080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79af38212c9e5b1cd5cc951a6fbc44d053dce61c303507142e514f81b2648bd
Date: Sun, 01 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672600887
