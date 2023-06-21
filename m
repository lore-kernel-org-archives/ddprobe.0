Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500C51953D
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 17:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7C6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 17:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687367588;
	bh=ef+jCMa036bfQGwoHZtuAKYwTqYofdbghxaevjCO3gc=;
	h=To:Subject:From:Date:From;
	b=igRd+dF59+AFaQ8q/j9EO2RSXMvI8wRjyYZEJAvOiKL1DgHE1qTkkODU+atKDiX7h
	 sFl3Zbo2A2joK8bvUy3WXdeQZjFzB2614Z8XCfGLmLjXOC7WYEkMXH4p5hPfHAhw+Z
	 VisvEBcSXH5Z44IejrJNxadqzj1LIPW618qAjM2K9g5ZtmFLMjahB2EawRPU9MuQod
	 A9EzHzGuVqAxgloDfV8BtmUDts6GD6tRAx/ZrfGsjxPMmOntQBdCBLGHY2pkLmZ286
	 oRnDyfwNpkdmawI8Yxt8IYE3yf8fiqOxB4HAST3zDHUWCHY5U0xgDIj9HVWHeYLNmF
	 Q9j2uWilOdoUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7F8EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 17:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168736758870.30973.15689749510442491686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f61c090dfc6f87102a66af1413aeac0e3a0b87eee7eff460ebe1377c3e4fedf
Date: Wed, 21 Jun 2023 17:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687367588
