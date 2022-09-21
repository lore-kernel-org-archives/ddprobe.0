Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27E17C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74456C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663751453;
	bh=glrmoCRODNEOMeh63FKOQ6eYNwOyNMa6L6pFu0y51Z8=;
	h=To:Subject:From:Date:From;
	b=qgtqZm7ggIb7mwv0C9v5H6Olia8l2tDYuzehz18c7TxoIOd5ck4bM3B7h805jYuNU
	 ffe3GtJU3nCNVsF+veGv4YMiFeniVkmnXVy8bz5XcmGq0YDwMhk9FA8pzaN+ZLDnVU
	 iI0Zm3/Bj+SKcmOQqlYvbCbTsU8wSPxpzEOW5gqdblXmTB4K0PzQsGmnkje2IdrcyB
	 poO4ARYZkeqlhReaDHUH5Q0gvjDi8i55LNtYoafK89joQY2uWAdrX1Ztt0xYvp8whM
	 CSSspS4rsdBZk0NR0pNjAfHeOdgMNuVIe8fXnPqQ1Vf9jjnrmMfOrRXxv6Npzd9Mzr
	 quhz4Iwko+epQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55DE8ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375145334.1344.4664111125113311786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd313af8abad6e4af710dc1b250dcc68899aaf28690f5821cdfb374483e174e1
Date: Wed, 21 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663751453
