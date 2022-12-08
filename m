Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C659E7E3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7365FC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670486454;
	bh=OAd23Ga0mQuGkNpg51ztYQm3IPnLdecKuvY+5Y/h1gc=;
	h=To:Subject:From:Date:From;
	b=cczdDBvasMuLRl9a2pzKl1ftQBpZkZ8qWQyWk9uGDHO0qTy2bWGGFxTGdgsqa/tqx
	 FkJgVuZ3S5b26+MwXJTl57diTq+72/OuUvaJ5MMqbroOYDB+K3UqZzkFr98QAhYbEu
	 sdympTm9S5azzxunF0gRjWax1KrjNoiJL0crpbA8YfZqYk0s9GiZqbYhPb358NRtfH
	 s9o/MR0ZySB0ciTWPQHeI9CaoWirjRAwkPFUCyw4I6+WHCWFaldb+oPMv4kEHRzX6U
	 sv0AT9POs2jsazLh1N9rU+mNcK8q/GhVjXt2Xn9PGIjsc3LZIksHW7jZeKpof2uC19
	 rl/31hHzzGPlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54092C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 08:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048645433.10042.3529625513072428554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed445fb9291621af90ec4506679282e5351f0cd8bd7badd89c54ada0357d966
Date: Thu, 08 Dec 2022 08:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670486454
