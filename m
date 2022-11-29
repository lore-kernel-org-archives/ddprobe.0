Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAC6C627
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69D4AC433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669693254;
	bh=LPsuQi9EipgF1unOlz2v8Sim/vHpEoj6ysVSV13Nn6w=;
	h=To:Subject:From:Date:From;
	b=Rpmpf32bftkSYKqiAP68kD2YWJfALEistiCYaoiQzUv52124gGvN/NZB0lxLn85AP
	 SyzXK5Y4RmBIe2Xf5fRkm+gELagprTSxQjAAztD9Ro8yEcvbFb51ZuUa0eJkwwbiFr
	 Dn9mkHSRsN2pi6VNyTLa0ZMc6RxoCVvdp8Tg7TayW60X3M5ZX3JFDeRnR2bG1dVFes
	 p4SAUB9NzH3uShjeSSy/2+TJ28ZiBjx653ON6bkKlnjOe6fdxCsca2GmipyUzNACdB
	 IbOeRBHcTWx/yH/q17isLfkI9ygpKhmEYV81LC8MP6Smj5ok5c6/B3O+PW7VfafXpm
	 BvoWLp8JJRZ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535F3C4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166969325433.14246.15623155491931606510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcb200d2cd5517afcd1edd34d5c69c0e11c94ce3d9cf64b6941291d1bad8f53
Date: Tue, 29 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669693254
