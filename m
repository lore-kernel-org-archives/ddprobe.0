Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B46FE5381
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64FF6C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662474053;
	bh=OGoVFgEU747ZgqU3/SmkYL/Ha3eRZ/b2ZEKUqHLu90E=;
	h=To:Subject:From:Date:From;
	b=mXMwRBUmkJlhH1jhmunhB1CoxFUiofn2gw7p/3IW9fNJCeKS4JUKHVSlU7xYVs4Px
	 nKqKVfRMVVA+jWEcfaUWqBiAJaJs5ZKWmK6l2beaWmHV7y9VSbHQ0VpAIys8VJ9tOx
	 6/L5R6PIjmbcs3DS1/lzTbHXBamxiOyb1eEUo1v80X0v84aapUwiIJI4zIv6G8tPZm
	 vL799ZkL9xRZdtplXFQAC39aR/1RGBJ5UfuT/yfKVeeljas0sINJEqKQxscMSnl6sD
	 fW8LyvRCU22gd7OE7CPTqql08xjiu20IYnwyBpT0rRum4y71kFWFytpfZg/LJW2q1o
	 BOY4XVjY16qMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9E2ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166247405331.32193.11549658159953027685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf6eaaab39f2f428290f75df0b704e24b28d0726361dbc4d08388ee3f1961b6
Date: Tue, 06 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662474053
