Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD0D7E
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65794C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662345053;
	bh=4nIxuplv9eN1Q9RLIQr3A1CXN4LVjDDQ+4oiVyLy6f8=;
	h=To:Subject:From:Date:From;
	b=PsJsJWdVgzMHx0oMb+Vwb9r4gFl6rg3vMgQ3ExlENqRrEHZHVLJNLhX8xVlsu+4qJ
	 kXrnsLQodrdzHfKBBWMARl3YUeIQMtfrWDqBYZkU8CXWoc6+dFHxX7aHF8WK7+UF35
	 vZF41CPuvJOwchK1HBIZ+tsPPC6760oh5n6zogHDKljpUmSjKZM50txHv/AzPeA+AX
	 MGVXLk3WFZSNBPn1hJ7/jQIFB8Y1Y57/YGRqv6Mu7V3BanxIQcONADJ/VhUjRPIsNP
	 MoSDqVw4y+ReniAcrO0Lngg6BGCm8Z0z/7xy305oDsUdnOL7U6JnoFNma0OAbc7Tzx
	 dMg/vgnv3G91g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503D1C6FA82
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166234505332.20654.6315039759947801990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6379b1b2951cb1d0e56fa4ea495f3a8ed978c33b76882927fd5ab67b9619cef1
Date: Mon, 05 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662345053
