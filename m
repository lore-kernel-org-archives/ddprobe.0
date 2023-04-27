Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC8D8827
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EECAAC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682628126;
	bh=gimiwdnRekU85sG88v+E7wOFdlJPX5CAi2VDd1WDqlc=;
	h=To:Subject:From:Date:From;
	b=CFvYTVpUqR149bvmHiZ2dVAVgOd+6QoXx+Lk2JdWDCXpvNGM9HAVmX0FSpGIGBxE3
	 /tAyAhy9fUkbti2d6p4poGFnDlWYNerB9sdTjp5vPFGFft9xdAZCINkMjI+FpHZSdj
	 ltRgfSvHRbZz4kBA/CA2wZAQZro5H3tXrO6maLIEEAb+MhRmvbDDNQ9LwVUYQafu+o
	 WDOfBj+d0wjowrf+vVHEGOrUnt+mtg56mGYlEwzJQvXwQkQ8Tnod2NMU2wol8BUN7h
	 /pHVz9OPVxeiNhc784F79Kr9G/AxQrMYO75+e2d+e7qygnkMjFe4gX2FAU8mNaHEv1
	 Qnu9K2G6wiljw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC205C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 20:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168262812581.15627.11669850699627060123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a073ab53d2484b59c9bcb54b090f3d57420b81ac0a6bf2600e748a746fbd93c4
Date: Thu, 27 Apr 2023 20:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682628125
