Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF662DF84
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+gktS1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85DE5C433C9
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701094096;
	bh=KKzFBU0WfNypkLG0hrOxyo6WPWrQyMS88m73T+euEEo=;
	h=To:Subject:From:Date:From;
	b=n+gktS1cLZczR9YDRblt1Rp7BIUCGXA1/tqVqW3Fqr5B00KUqPY4VcEyr52Yr4mbU
	 JPaT5G1h6/4h26ZpVHRI/6EpaYXPmbwU1sCzZ5xaAk82qC/d74jmpwibFo7uP52ILj
	 Y1V02RuKZCx5Aw6k1gFxVe8hyFi1BjOToWM7eVV1C2M9Z6SRPWdd/ol5iO+GYRfv0J
	 6KeswZ3M5xbAV7rXdb2ZA6xg5CHv++U/Z6nkJCCxQCr7bE7hInesedgcgvsyjdrS4S
	 XAaVOTy8VAnp7s7/sUwBcTmChqpTO0x4hN96XryB+DgfWmxT+R6CT2HxSq+s7yLk0g
	 wRdZ+zY6DADQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66950C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170109409641.3977.4115981503779860469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388f6d747ab22f2c4fb8839c76627ec6764acd6dabdc177abd153dd0909627a3
Date: Mon, 27 Nov 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701094096
