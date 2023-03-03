Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55C521107
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 01:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0CDDC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 01:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677806766;
	bh=BZcXItiQylciSIcr6QoHT89AaoMr4ItBM9h4KwrTBlk=;
	h=To:Subject:From:Date:From;
	b=GBdedC3oFMsq5oq/ilm+1dBCnwiROO93TSibaEgNTioM7e7U9idij6ONBVJ1OKjMX
	 c83uAAXeFHQ58BqJGQdJDdFG58VuPWDsY7w+JnQfHW6ocESB2nsnK9iIU2D5VSitA2
	 ACuov+hcF5tqdC+fwRpGmo3vDt4JXftufVHaYs8B4mVG4qXdJ+B4WgJUQNV1dlC9uE
	 XH0T6OVWkx+SkeGIwDxX/AYKuofsZOjEknmv7fM5a+1UVm205S9LP8671kIEBNr52X
	 U8ilPwyMURiGAzBtiZrW6Y9tMkQbVkbhOyzXoY22eJG6z/FTaX0Vs0tKX8jwy/ope0
	 hqPrVNCW+aO/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D181DC6FA8E
	for <ddprobe@lists.linux.dev>; Fri,  3 Mar 2023 01:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167780676584.25984.17435185145534319817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40403da0de73fe90a633668a8fc989974f6dde928e675da299d7be53409736e4
Date: Fri, 03 Mar 2023 01:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677806765
