Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A7DF623
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 01:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7733C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 01:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693704248;
	bh=2Irg6IZTPsmpjL8kHsICx3IYZSdQ15Rf3zPlIYmeF/g=;
	h=To:Subject:From:Date:From;
	b=M6YhGNvYqgWqjAeCCLRSIB5cwKu35DNbNr3sMgVlw9SZH/BcN6QaZI1AjRGgDxzPE
	 IeASkjIwa3Kz4jwmj/TtV1oOlngz2r95I5dp5x0VsBGJxxJg+82S+2/XCaSuxLZZDp
	 H2c+u6T8jNOtqD0T5bjJLbThtxgmLAWsoOo5j3vTLST/2fIO1M0oM6dVfmgmtQqrN0
	 NWHciZPBT8cSJ36Wr6eMZKWKl3DEgr89gYkquRtFQ/U0Xn4scwklY/DyX+5tV3Debl
	 HM5FmOz9WZ8EuYD4AqL4qbpXsnkyQCJCCU8W89EOdRNAZBWKF99h1URH1bfjyQjN79
	 zj5tpt5zc6aZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B03C71153
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 01:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169370424870.25577.10274766839798750448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1efa9efcf1585f5eac2461e26008c290db2a1e99fa13d009eb8a8b973d813b05
Date: Sun, 03 Sep 2023 01:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693704248
