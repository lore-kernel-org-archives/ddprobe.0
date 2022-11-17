Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D200A17E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CFFEC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668668454;
	bh=GGFkb7CcCTSiUT7gDVkB0gdNFy6aCXAnXmhxW/QMCmI=;
	h=To:Subject:From:Date:From;
	b=frM8F/mu8tyZSbYKSY5zsX5h+vAb5J2UoTS3SVAh5GjdEXOS2Yw+DzZHZMU4iCsj2
	 8NoW2UKRdDKrX31kHHkShVDt/B8gUZJ0U6dMwzkmdKQX7rYD3grfXpz4mmIn6o2Juv
	 ygwhsP0daTPgMhaUjEn2RLJXCASNEPUu5qQ4u/YC23dylXX4KxWjbrEZH1KNXsq6nh
	 /DIv68rshgBAfEVcZACUyotdrBtYdDxSTgStHZIFT26reQ6rALb3Y2Nuv24nXLlxko
	 MtLAXa9EErgVGYwUbWNAp+kapa/h8XsMg0Stq+ZldzJ2I+uQdqgdULNpGTe6yaNPo+
	 dSmqX8d0B+xkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523DEC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866845432.26751.2642394236217980797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa14aea2e722bb387b4555488f9cceb7cb3d6859a5a363f03998eb2e890e9f33
Date: Thu, 17 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668668454
