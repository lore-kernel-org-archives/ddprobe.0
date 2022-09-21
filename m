Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB2C4C6D
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FF9C433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663775453;
	bh=7Ii/XMOO51uur91qlqsmqwBJzOx9jkb4ePnVp3DG3Eg=;
	h=To:Subject:From:Date:From;
	b=TRO8JvKt/Ev8zjclFEHzSfPlX487Z4cParGW7GofSMmE+zjTVifb3CfPzsv7ZI4kc
	 uivEodB/ksp8oGUL2wSljJAoFGJI1oEzu9MUMySizL1jQaqenNqalKY/RG+fifGKjl
	 vT61Z5riOAy9WuZRMFG9Ayx+yj4fVjzazOe6/IT8glZWGna5XKcpwVwqAswsE3EAB6
	 LgmW3oEEYRtcNSsPc67dIUWHjc6B429StZB/7t1cXqzEuL4RUBMpGUBc2tJNXKNggI
	 l8IWmI5CND5WSIZ0G/3FIYqNu5Pqrod5mJ+7Pp29Z/629gfNAzlEPpQtjjUcoTgSF6
	 gToZgmcNiE3+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9FFC6FA90
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377545338.9371.8412863128784457546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64d0f61be91e5306ad4c37d1dd2e39deb021010812cf6f74e47d2af0f154ef9
Date: Wed, 21 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663775453
