Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E782B2119
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92744C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671211887;
	bh=N4EnPEFJIwzkomAR7zOrJvWjYXmRgGe2biFs25a8Ac0=;
	h=To:Subject:From:Date:From;
	b=Y1KBRyFqZPewf4slEHecft9nlWCZK8Orjj/NJuJ5Qvc//elw1sdYzlhH/6IrKK6W9
	 0i9SijZEFlvyIr3lXt1zBh8uA56/ZEzGuu8I1OuB1MjPjILUQ7lDIg6p+LiiyBxagC
	 hmtGnu7ruFRk42stIKDx1q8fM03bUSodFN5VC9lFgU5lVPzADPWYviluyEFcYKkDyP
	 HCoO1vnhcT9P7jcEXemowYQdubxYRoaRBN3Ub/wAVxirZnM2K50iQsmLYZkfu4rfJ5
	 Ju8ypEgmRJ+A/Nga6tOQuvwlYG+gbTxww4wAdW8mq++oRrZRQEe3n32oH0lHOeBPYV
	 Cx40xDrX/hWnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 707A8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121188743.28790.16680252937421385780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 387bbc3681eb6046d0b05f71f5fca4828f52b66b455a5e09c0b1d40e7a792354
Date: Fri, 16 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671211887
