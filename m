Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA56190
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBCCC433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667119254;
	bh=Ta+0U3vB58PhbK6OkYqkTJ3tWm31VsyJs7pl50MWVNg=;
	h=To:Subject:From:Date:From;
	b=ha6BIl0j0MLIeS9ERn1sfDnnh5onvG/PAMdoG2d+isNa5F4jrYmbOSxsNHzYLDaaQ
	 FcCkr5qzlUnkKWJT83NSn2CVZn9JZynd4zqQStjMYFn4sREfZevxe1UQjiise/HBRG
	 k76LNjYIBew6/XcID/05ncLxHMVn9Giksq/0lXo1BU5Bjo5zRHiob4OLo3ym3ye79p
	 0dl9mmR6OKa1ohXh8CtGBYdl7L7EtQThBEeo+oEhdAH7243GcTeLvqIWFrfvK8T0Sf
	 6u/kTmmkEuaptV5LWWUfRm1TmxbO5dqFKJfGWnKTmrIjFkNVfwrHL8Uv+z5zIffZqR
	 ivjDNkdblIFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D34FA373D
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166711925434.23616.2330678457762814179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb2974ef4a5cd56f36dcc780b4694bbd37ac699a555302f28d10d2635e885d0
Date: Sun, 30 Oct 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667119254
