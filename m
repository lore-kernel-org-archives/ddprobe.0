Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5896F17F2
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAABCC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688182448;
	bh=4IpxF5UB21Al2ExMzIJEeeCMRZa/CUm0PaSjcVz2QFQ=;
	h=To:Subject:From:Date:From;
	b=Ay3sHXuxlnCy/KZybCniOYly/vVQlN09e98ewchwHDs+uYgI4NAbyUOTggGTJWRVS
	 GjUDbVv1Fb805pjifh9sZ1nn9jVmbawWAbiGbTE99Jkohk/DZGIngsnUYNEguBi7GV
	 pGO4Dapu3oSqOHAErVc0J9QreLJHcZYJwxKnDzJKZqDF3wuMnbip2+IR9rLGZiK7Rz
	 lE8CT6EDTMYkPI42Itu+z07YhNBJ1guyf9kZfYlpUcDMhWh7rRxLbBej/JxNpqM2cq
	 VafpG+yZeotUnmMXYjPka7POYDploaFqVfSy76cix2TdXVQ8RRIojVsWbCOePeKM2B
	 JLJRhv7VcSYrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9F5EB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 03:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818244870.20496.4819911760213683220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e098dc5dea89aef8bf23a88341534985103b2e308564373fb35337b78758edc3
Date: Sat, 01 Jul 2023 03:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688182448
