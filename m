Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB0117F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3C8C433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662909053;
	bh=2jc9T9cJ+y88ttc1fA5YD4PbjH7MWpczievWggxkK8c=;
	h=To:Subject:From:Date:From;
	b=ZAVI1S5sXPuaGknTWO5T0qrDABPIngaFnfOflNckvdAhAU+66run+mXcwk9Mm4L2S
	 T7YWigsy7S6TCQkLiOvCMaSZBiKMezFHoWpD/WLXGwXgQNN27Vc5YeEMgMLObjiGU3
	 ARJshwCsqUIx29ywXmjnFn1tyVLjx/tiT/Tjq3b2MS8tog0st136Yq4zhzzSqACUKo
	 H7dPzfjmQueapVwieA7XK3jqBaJ7UGSoqaGR5lev/ADu10D9n2WpcjRwkpdvagwAYt
	 hynoU6i2E5PdE1fQs4Fg2etNkVcbD8iGDsl6Se2vlIdBcL+rMBYeLPfkjJMG+l6IoM
	 0DCAwY5mrxQFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52821ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166290905333.26476.17827712701107772245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca67bce17e3fb0959712990392a6b3d6ae676e305fc696c5ff6c7458c4c9ca7
Date: Sun, 11 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662909053
