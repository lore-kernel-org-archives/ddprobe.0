Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C0B376
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FE8C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688259848;
	bh=9wy7pouRDnhFT/v0cCe7BIdWA0CxWK+SXSf17AMj360=;
	h=To:Subject:From:Date:From;
	b=ArQwzocfRVOGEpkr06iSOu0fH2ZVXRSS3FEjIHRIFT8tYuYwaOmwjr34AeSRHBzhL
	 anWXoRZaWTOgZ1JfJOajjqFVoY8t34t5m9Xf9Y8Kk0xliiBXV53KAUvHw0S+etUYb3
	 NW7tAX7m6w9y2KjluxELpSQx3ztpshZ03cIDzgyOublE0MWywaEsGd1mZzMX6GI3lG
	 OQvf/volYta5eOnr6cOK2bJto4tsJcAZ8G13G1MLPiImvycHNW7nJRKSgnNvLrM8xO
	 dA4JT7D5KXDAx0n9gezTPx8QgA6osLZdtzF1m+p/0oAc5Ylnoi2Lb09zVzMC8PnLfE
	 38AQ1aiEJGzcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD58BEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168825984870.8392.13488136674308932971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fba905b1c03fe0d6a41e1db036e3b7f3af9b5d36e35628337c1c9c87e88f75
Date: Sun, 02 Jul 2023 01:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688259848
