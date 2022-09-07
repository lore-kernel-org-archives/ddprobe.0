Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B41F97E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED31C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662532253;
	bh=E7wv45Pa+cT1W/qIg0HX4ys8kIAla50P3d3U9ttyBZw=;
	h=To:Subject:From:Date:From;
	b=gPniqa+6lGF5gR9aJZoA9T3Xkf6WGqyzGagXLg7Nc9q6e8UOEWwv2G2odTnl4+cZH
	 UBtEATnbUifbeJWsU5T+XKHDOZQt4w5CROmpdHCqlWV/zg8KTetoN/Y43bnR7hhfi0
	 kaOOvcLkPd+lmaG8vmcgoXTv23ftBWQIQqkyyAyfHvi17otuUvaCG4rJW4MEEC+Wew
	 IH3EaBrMCjLK7X2+fgAWov91OQu7I9Gt97+F7lnlvYugikEST1UzJnW9kHJzLBzRSE
	 X62xvOe5mt6annCTFynNBye9QUKwLEtZwi8GYeLxZD0u8IZFo3LrhsgMKS2fA4ik2p
	 ewJXnz7NtpYgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54753ECAAD3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253225333.17761.15114995879169552418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012ab9feb078a31e04e63bee706df318240b570d4c5d61da5e7352c62dad7d83
Date: Wed, 07 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662532253
