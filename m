Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2724217DB
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wo8yC6gH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 996D0C433C8
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697966896;
	bh=1eebaPDaFGuPY71UgvGYrt5tE6ejvgJc8myrtwCMF90=;
	h=To:Subject:From:Date:From;
	b=Wo8yC6gH8R/0iGdiSaHRvD20uOwilv6TK+9/CDRSQDRhE+eCw2mcQwyXQEbDMXjGS
	 n8eKRNsgKHBnAVDgrmtgZbsZIQMJc1Hzth4UdlJY3czu3faPk+2MyW3o/dlGaEeWbp
	 jHUssV15SjytbEstctU7JUvxHSr2Pu85p6u6e/zHshhP0FhYUOR4Bwsx2g/6RIHY+7
	 1v3U5adojG0IDHvso6DdkNzgNPwCCbLjIz6Tu0bw2Vju0K2JbyCtnUKjpNgDHRIr9t
	 OBlMkoAglLaDIwcf+k+AMloPhHeF0OlBfG1ZJCjexvrYscgK+G1naSgT3KfnSnbZcs
	 MlzKUVZFTjpVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EEEBC001DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169796689644.12723.6843894765530326787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50431801f83d5a6a406dac60304d87e4dbef6e7c2df617dfc2b71f55884dcae8
Date: Sun, 22 Oct 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697966896
