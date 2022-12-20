Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF013813
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBBEC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671517887;
	bh=z0yLJ28aok0Jvg/W+vlJCi8tsL7lKt7ps+w7tJo58H4=;
	h=To:Subject:From:Date:From;
	b=Uud2r77sF3pJN2IZtkfne8OJvV8ydQ7w4EGfU7We4O5eaqKBxGAqJS0gmjEwayCKw
	 fVVlu2we8VBqI4jtrYO1Nblr+DLM5RwezjhzMHz8LNDo5j3BNGsc99HEc07OaHc87a
	 Ulep3265woS8NURm4WGtQ0LO2Dwbr5wHMAgJjj16l02CBQXBc1TXTZNF6+N6JzwMmR
	 v/Eaibnq5DNYEdUlyUQJIGNnrRtBcfGsiFZWdlq8n6s9jAhbOoVezKFCb4KiMGaVVo
	 qzB5nEwDGWEzc2xMoqho+Z6/dRI/M2nIbR8JLU3FFyMeDvgiG3SguszGX0+9Ufu+Xy
	 kdPa7lZykIzmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6490BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151788740.21327.3561393431280770897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136901d013a43e1b984f885dba5c4aa7448ec18a0cac31a8634b77bc031b1265
Date: Tue, 20 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671517887
