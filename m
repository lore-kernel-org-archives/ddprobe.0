Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D7E17CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A161C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671767487;
	bh=Dv1LvEo9iLFDu3SOWaLEG0r0kTuMR/9r8XwXYp3h9fM=;
	h=To:Subject:From:Date:From;
	b=rn02KFQcRG4ouLbJ5wte56CTBEie5DpLB0LGOQzg5JQGrBG5aaAmG8cQiFkHvJXZb
	 aqwwOvYpbjsgygmoaUZUUEmv9c5yARQUwRiCgbTZSSAx4+9KOsASm3Ppq68ecndDe4
	 N2fWuC1R5Ppv6Uy0Wy8wdIqSsOJ1NVPuHPFUpw5ipUPWekDlfECbV++lvSRnMtZz1T
	 xRmJ0ujfX9Bk6AiuqYwyhkiZX1JHOwXhRyP8QhlFEq0us4cEF2kGIg9YOTDWj1PlFl
	 Ng3qYId2K2lEpQAN9MYBpHxyXCsIw6sgWyson3uxENDarsfqD8Q+u/utTuOfsKWm4c
	 ZzUG4gbqb8x7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F841C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176748738.10049.7270115441986651451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1353a3aa5dd7909832a02e18557fc111a928728d2d89f0a3bcd375eff2d99f5b
Date: Fri, 23 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671767487
