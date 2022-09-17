Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01BC637
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC3CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663456253;
	bh=DDQ6HbGWFCU3GLpO9qd2VPRZa5qJQ7RIaqzl8KgVHuE=;
	h=To:Subject:From:Date:From;
	b=vHMjaVtsFp2xch30tIdl18x/hjqq9e3F45xmNfsySSsPlvOQVzcEbGEdAjI5HxMCQ
	 pMGtihVIkZPQmzsuZ8Qth6IyIZY8wOKoeFj0IQNN4CkewLR83kr6ctedkw6RXm5qtR
	 xqmAJxZU8slVvSdJSoMvpbnJZcR0cNA2XGK+EN+8tDOPEiJtAwHWeGJU0YAepY/dan
	 0Um+d3Q3nu44FatjxBPKADzxiIWBM3Z29qeufk3FUcyQEsZH2bvXpgOtevqfUpYKB9
	 iWp5Y57lITyJF7LYQ5y+djVs91gl9eKNG/NTFn20sTsaDgnyZgcUXn6WQQyhm9LQjG
	 U75Jwe+gcXZoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ECD3ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166345625331.11233.16701507084727620070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31b04357c3f444ec7fac15d3c1a65748623215069977889e4dc39ba91ebbb707
Date: Sat, 17 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663456253
