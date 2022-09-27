Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACA746B4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD5FC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664297453;
	bh=TPRQj/qoL78rZSsZXZR0QoeHyYw5GT6B7d/i3WH4VkA=;
	h=To:Subject:From:Date:From;
	b=elousJbC4oOlUv0L9Uqe3a0JgawT6MgOrWnnlYhcHvVNT+/PwfwtC0ZfOfFi+kxj4
	 8ra794CBubwLAN2kzm76sAhphs6jzHkHtET+eNe/cp7IwmkuTWNgwmcrDe1eu9qtJW
	 ubQosVdPLnu/wADiSdQCF/8fjLqeaYDHT88s8cJZ/URJXJuVXSa99qmVDu5Z3OBtXA
	 cmXr/pGzTRGkw+nru1ltuW3JePZUzOqGMFxz7SW4fuged98aIO/lrvQTbYVo5qQ2fX
	 UtQ5eBGlR1HtCGf1rBz9P6HA0p+zhK/FGsb8aRkJXn90afRnt0RxiLrzXR90iRwhaU
	 s8Gjcd4+kO4RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FF86C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429745332.30873.17075292485929488772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9fa5015f547a7dbc1f2a9503a1791a58c7fbab7bfc4022f3358af5c673a0bc
Date: Tue, 27 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664297453
