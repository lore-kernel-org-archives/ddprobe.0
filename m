Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DE6A21
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 05:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04ADC433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 05:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693286648;
	bh=MA03Wq7oTYcaKQ25YaGFBan9BEfdSdntI+dhPTEF3oc=;
	h=To:Subject:From:Date:From;
	b=fUoVWgg68JZfVneRjaPFKSgu5f/sltEdUCccS4FFuGoBp+rF+7bdSv2heWIb19YYA
	 3tQDhMWs4Xxyk6cwLZgf5TO9jJUxezajwK12beeHrvTkjGMMbWRatZIlKuGCK3wKdt
	 exmy23lEmXF+7HaYAqK9upamqywybr6z7V+WTlNOKXzxfQklXLHDxSvwoB5MXvJHx8
	 pmh1G2qCceZ3F4ztmHgNFCgDso6a4xsbJOyOL2NJrczKJ5d1ya1CbR94aBOk+xE1pY
	 jTFbx4WBZ6xw62Swd6gy1UjjY/bOiR8Rgt5YGOY63HM0t9jQK8EqnyPNVDn7gISBpq
	 37kGaolecp5rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C48C6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 05:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169328664867.23608.6364515920105651494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a101c0d53d3ce0c341e122ad35809886d090dd82dbee6c85f3bd61d1f594df
Date: Tue, 29 Aug 2023 05:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693286648
