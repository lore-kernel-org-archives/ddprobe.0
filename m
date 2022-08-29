Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C961A7C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D287C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661770852;
	bh=+EoszaxTm+5hGxJ5vwgQRl/47a6/7nuu+A3L+E6wy1A=;
	h=To:Subject:From:Date:From;
	b=b9AkmIWFWlLcxlmDkepVfl7bi1L5/iwqzOuBlw9sVd0MzpdwgdF3/3kTcbFDyi9qe
	 DdpwiopYmpciUU7s5ZHi9muiYdZoVkn9ghUJevghdmGKZfOy5/986xvPhtyzLjAPWd
	 GTd1wMrEQ6UTEOaz2NZNmPBo0Lzd9tZDFC93Zbvi9chYeAHmxBbozqQty2dxxq5+2V
	 fiyAz931ojwRc75tvZxyUsP2ghxWt0r6dU/0b13lzaBGaDIDAvRsZa0iFO9Bj1xtN3
	 u8Ji0znYLsWNRAbr+Q/ZXnHzcuunYytLGzmE9dL39BfOfE6aW0EtD5zqVPp6FqFmw0
	 Xxgo+fEh055tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54CCDECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 11:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166177085233.13896.12172346040335078327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec867d0bf0c5bfb3342b59f6941c8b0f3e7b13adf779bc0093f17df1a2004ca8
Date: Mon, 29 Aug 2022 11:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661770852
