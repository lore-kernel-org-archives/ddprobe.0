Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60A810F2
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D74C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669278654;
	bh=GKNOioWZOiJU4SdVywbF+xBhVRWrkYF4lnMGTvH31dY=;
	h=To:Subject:From:Date:From;
	b=QbK3ISrfIkFSyUyJxDfJXasaNqharqr8rcyvzLiQ3HE7cZ/WS9Ezd6ZYeWcg37UrJ
	 rwbiAt8q2w3rrMKSSB4oHf11RO7gU+UI8rqzHvJ+EycLgt0b3Am5/r4BF6cM/2slSO
	 xIc24Z7DSbRmmJGpWcceUSL1euXCqr6UQVZ/yIhjdFlTHW7f3IXUAVzMKko7i35yKh
	 +qV4MVx2Cg+m5XCsgoq43fwYjlJT1IfcojK9CHsxtQQ5b9m0SmkHMy7x2glXBayrkp
	 +ngS+JAMrJm1UdZ4yYRJGK2EkiazOdEpGZbJhe7c8H/QbwnFttZaM1g+ST7pjtN4hE
	 oIGEF59+2YWJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C1DC4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166927865433.29023.9657781630109849716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aebab014f53c05a09ff3f9b180c37f00ba5f1181474f7e4cef22651f91ab261
Date: Thu, 24 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669278654
