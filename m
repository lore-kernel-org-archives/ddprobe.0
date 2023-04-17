Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316BAC2D4
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 05:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BC4C4339B
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 05:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681710485;
	bh=jU9KOzpRGwk/zr+USWMluaUUGBuaGoXP+dHpdi1Isl4=;
	h=To:Subject:From:Date:From;
	b=bjEpLu8T+Cxv7xzDgEDVh2iL+jiMSS9zCPR1Ixc0QHcRIjxQN48alyQ/hIlXhP0vr
	 zZSZEa1ZtkoPxj2p8puMFt7VlHWDmMAf7Bo8ORgmkzC4di7/kEwGy99MIMj1ECgKCI
	 eVY4e2DsTOV4kQPaGMtf6yb4Jv3EDN27Vmns0Dd9pWi7nft/Rc2A1OiYz2ykJ9YREH
	 2dCPN9keAEJ/TXmYIX9Bgw+y0EZrl6XLmYZcPoQz5EpOOGrevrVjKnmbwtj3TR7gjw
	 pz7XlJs+RqnoHfGI1eJSxLYMzIj+Qqo9uHlwPa/p6n+JTN3jYeRrlZAT6JoSTQ/SX9
	 eLQPzUhqgYjyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC620C77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 05:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168171048574.11176.3566532277044457176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687d9d9b4bc42bc85ac672a7729e4872fc4ecf5fb4b261c5e29e5bc29cfeea15
Date: Mon, 17 Apr 2023 05:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681710485
