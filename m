Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E607A10A08
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHYc7YhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D6C8C433C9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704203296;
	bh=RT5G6rOO4byUI/jK/8D0RefCvDtr2O8V1PRmktgKtzU=;
	h=To:Subject:From:Date:From;
	b=uHYc7YhFpfxe5iic1iKTK9r1/f6O1qim1pWfwzUct7Dv9ilYe8YC9VRgDmMi2Tp6E
	 UkHgmr5jMQCwXFpD6/qcF46VhwG7GHzzhXTU1pMgkZ2KpUA4E+GvwRsqTgULr/7VHf
	 cYIvcSBctz9vyYOKoKwa24B+2OEDv+IU+lTdn3lrwTQFf/HObUw+vMHK4kcDODd1ct
	 zLYduREmWIMIJ/rQ7YHOaWArl/iGxFcCa1ivZQELeibtUGeogB1DTm2FkDqNgqksAI
	 IO3Y7fFeZEQHc2ZOuyRE8GzntLiAaSA+/KAGxGglYGEma/Vx0ajJq4OFGEam8phvkd
	 jiSdSMWCJhd3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A266C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170420329642.15970.1688501680900290968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05332078c8f5531eb4c73fc72f20d7daa1d84852caf1f8ade2e657858067d995
Date: Tue, 02 Jan 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704203296
