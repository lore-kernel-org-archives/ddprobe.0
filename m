Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78702F53
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A49AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671218487;
	bh=asGEr/bRcp94QzA+4Mrom+mzaZnv+TDIYYuNPK4GCIs=;
	h=To:Subject:From:Date:From;
	b=P9MGPwHsm36E87eBWVDS7pRZtJjg2a6Po4kgw/3GIex81Xa4P5ocq4emuDq8VNlle
	 Mtc8BoaEqn5wibN8cHG18ook90rRxsYKDgqt0GEuwN/2qKvl/S6tNVswmxweq8nms4
	 MBKorLXKYSrMGYxM1ILQcxbUOaqLUjuqmQ0+kxb3UlYKMJ9wFmS/P9HDtsmKap4Fi+
	 qu4VYhdc2Y6TaJGPx5/H0IRfgLT/zxeRU6eWBe2D3bTrDdOgbvPYwiY60kQYKbwtWE
	 3xvSw6HvLB+NXROl7JYGMP1UKorIA4x0N3+qybaE5+N/Nesd7bphNXjGbImCWdpBuq
	 2kMHw4/jYSyYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60973C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121848738.18614.8882644949198685439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23cfd7f0d776f57659434da88fe24373150c090f1e3eae56398711a0cb1fbd87
Date: Fri, 16 Dec 2022 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671218487
