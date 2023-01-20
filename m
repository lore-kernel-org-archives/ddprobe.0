Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DF9BD06
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88711C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674181287;
	bh=JMbAwPoZYRy7A+nDX67M27KQG3osBsS+Jo86+kMrj8Y=;
	h=To:Subject:From:Date:From;
	b=FWzD3mIhB9qyRqy46hsR2TWfXn+iq5GVFVe1/FjdV1nJo6H3D3tzUVeX6UAjimyey
	 tMCnbZHEkEjK6I7BSUY9F3Q7eIDANNhkJwB7PaIbkGBeo/Dc+r7NzRbI0HsYfRbNRY
	 fnUWKokmMY77PvX9ZtvQVQstNcxFqfsCbrQcaXydx4kClEL3HHAeB/gB5j4/SFQgFa
	 axOWpQkbfmBIAEzlAZ5bqFlDcw8oZQzEZxXQCN3qTL76APNi3zbsf8WbgQQhraPtGC
	 ft2CciXz1+69s3wvBWXW7h1YuYJ11nth9yTzl2kOSRxAZnR8TkUuYiyOi8ERUEb4h7
	 MkbAHUwNFuubQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69E3AC004D4
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 02:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418128742.29540.14570372078291148815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a3c7e6fda4b8f073891454aa248fb0af30e31e4db85268042c568e89def265
Date: Fri, 20 Jan 2023 02:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674181287
