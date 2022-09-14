Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF2115B3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B44FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663122653;
	bh=Ryy/iyTN3Z/a4i28qYPQEbuWG3yDNIIqMEj2dzTG2lI=;
	h=To:Subject:From:Date:From;
	b=FSDv0+97zAl3H6tX/Kv0dAEpeEqroGMhhQvqHGPNwHb561KH353gCwEwF0Ap6YUJH
	 R2Y6yLif/3BCLMGuq06j8n8AFCQaXr2cataAebq4ZkapPGc1mGgT21ohV73kFt453A
	 foD8LIuJoXi67pR2UnzikDWC8vHMKSQw0MzfaiM16Tz8IWeV6NVOuQrKOH56OpxhZr
	 RD30m7MyAMl2WKYhGJ1uVZoxcOfQ46EiXjJ/xEb79MU+wR3xBXRWk7GDdlPpQFCje6
	 8EQfgxQMj030JoDRmtk/TRuX+/ClWp7x4w+EI3EncvF3KGzF0oIrE387JwfrWTvccY
	 Qgq0Fw81xVAcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50ACBECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166312265332.2621.10582939825978728405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bdefb474fae5eca2512da4432461b896bbc8efe62a4fcccc2b644d19e938aea
Date: Wed, 14 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663122653
