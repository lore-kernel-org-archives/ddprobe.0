Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C960F626
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FBEC433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664957453;
	bh=xnZJ7f4/9WTlL2p1rzncbA3j1GlFqGJOn7spmVZwgGM=;
	h=To:Subject:From:Date:From;
	b=jD9g7UANAQpeNSIvLQV65CvekjcsZ4bRf2G5fFu23ClejBZCSA1W3XTQZto1qjR4/
	 fqXUews72dOumZh6VwxgVS0xLu545yafxg3wh9lLDC+Mk88VNRCDTt+80N/ag8dawK
	 cmmqV4uDiDW/1xt/E0SjNtD3PG9Qg/mbISaaQvR4Lbv+bu4K930o8z3RNgftfCWwoA
	 nN95P4LmAUZbMonpCXkoVie3BkOU9GJE/0YTukGaMLFnuEsoQ7K7QWvwHAYlhnLWNJ
	 rTLDmbxU3nOua4HrLOuoSnTBuLAMc1Nr5+ZCczqNlT4gOaf4pxGMly3+CP4hH5U/Rn
	 UyiYAmqbADt8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55142C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495745334.1955.3845901395129278058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c662e8d9a1c11ddc9ee237c3b8294add3c2b2c6a86f4c41d24b84a34d07ad46
Date: Wed, 05 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664957453
