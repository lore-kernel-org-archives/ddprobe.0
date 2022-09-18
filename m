Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F216A656
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DF2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663486853;
	bh=NJGdNJjNaPFRneLKnRvbnh1LcE66z5UCRSbdzDZ0pDQ=;
	h=To:Subject:From:Date:From;
	b=lavQJiYwCIIjRUhR1Y9eFEF7POXtsQvQcr9+c84tMrL4lmghhiDDZ32Pt7WWA4I18
	 0PuLc9wS4LbTcs0FxHpCKTX6IeNsHcx3u7MQfg513askEYlYG15IOTvvsLj3UstiKs
	 Kuyph91P1cpZSpJVb8sAqhop6lYSLFrKTRx/zWh3Ailexv5Oi6PEg6hP6gY9wIQg4L
	 Q3NSPCkPCIklHBna1fEBuYfUaeDv0nTgh6KIGlZPAYqf3RaxUheUuc0alevBtWTyen
	 VxF2ZgWUIH5cPCS758JCtyn94We2bn3es5K8z67WVmDMDmQeDKqxXqaroWFCWLDkgH
	 huZGZuALirHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D109C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348685338.27614.11348627042697533069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0841d330245cc497efe1fc0827a0fdb6a236cf7e2a484bca687e4e9864a5b3e7
Date: Sun, 18 Sep 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663486853
