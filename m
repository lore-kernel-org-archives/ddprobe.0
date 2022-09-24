Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0297F
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 685EBC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664004653;
	bh=EApFtMy0GzXWnOTmRuSAo0odDYupG5kdLBIkL9zkEB0=;
	h=To:Subject:From:Date:From;
	b=tjHFo6gOQ+GQ/ywG4689HYzlw8zoufvU/FmXHygAQ59mIpiy6dehMYVgMOjjnn0jF
	 PSCkZ3CgCBPyxW8TsAp06emFpFLyBmySpybY/iMgcqn3AD9s2sUg/0jyO8W1KDQNO+
	 kgonNGB+8+cZCT2UHMOYTe4buQkehHfNWkiwETW1t1T/gk3V/PYz6EY9Z8kvPkkuQF
	 OTCjtaxl05OSC5qvmgESY/r627uGw90OkgaVgkXxe1ogSXP0w9+CoTneDUnea+nWaM
	 vQ1w6ZfSKDxm8gZeI88occYfjXu8SxzDn/UmiaYXn8jsqHk7igSZd94ryI4HxerO8s
	 AAo76nHYUp4Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5050AC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166400465332.25680.14184593470170946316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bd5d5a589e0a51cc2d791f37d0bcf75f9d128e072dab1e1663fc7cfac05582
Date: Sat, 24 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664004653
