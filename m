Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAB17E6
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B497C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671366687;
	bh=Cs8jhRYxMm7kSZRa1/4NcjdJRg/2Ob3/59JdswCmr3E=;
	h=To:Subject:From:Date:From;
	b=gTtMo1eJLeRYYLakqnvEUts7KV/rPo1t97n9K+r1WlH0yj5D3/OhajAGteAEgazBZ
	 JsZ/n46JISsYosO+wi9yGce9NnfL95I+G3tUIPS+mRBi2JB0vXs1cqdECqxB3Nqxs0
	 t7YBEwdR9MPBKZYaxZODcpakQTtIWxnb34Rr6ZVBVOO07li/z4j52gx+p/a5JtnLSl
	 iqtkW/w5dhWVau4gdfgrYLvYlh+ugpsBrZKf/oNQXLXu+gOrPLR3U7LpHgEAzWMmrR
	 ImFJex+PWlPeUw+pNmwKUvc3sFqY5gEAP/1EyEvvBcGudc5S7gUS7FKXF2ZW5vYUx5
	 jXcVNbcAwdc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62673C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136668739.20902.5065576066779973710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579edb4286b4b8814ae3552228cd96581c2a09f7297ee2572e60d44b1b10a96c
Date: Sun, 18 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671366687
