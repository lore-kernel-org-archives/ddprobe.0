Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC7A2107
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BCCC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688719028;
	bh=XUumWJIBBR+MADVIyFUNPd0ztC6mP9Zpcxv/9mY8aEg=;
	h=To:Subject:From:Date:From;
	b=p86MDGrPb9yJR70AJV8ku51xcDljxfuaAdQ5fefkSWBMPpc1W43RcX+vFal4Byub6
	 NCsJL1zz2mEmY0gQSXiIbZTC3iJUVeidB4fuhUoWEeoTx/8zAStARo7rlQBzyy8GwQ
	 rhARW4yHUBTEmPT/B7GIAcC6JOu8RUWL4mgvAa/KQMN7u+Gp8EqD9mEQeDG+RFHXuT
	 xkiCqPz2PZNJy46DRCX4o/VWHUZZC3jBx+46zqZx6L96/AFHTODL79hU2o7W4PeFDD
	 WGSaUaqWk6gmmTIw5px6seGJAM+I4kybeGZErkv3/dWQfVQjfjHFhNVtKhWMX0V+SL
	 DRHqY4jzFY3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B315FEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168871902872.22123.438902310690815088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b433996ad4e727286c08ca3c4d8c3848dc6aa5761c627f4b0d03a99a812d1f6
Date: Fri, 07 Jul 2023 08:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688719028
