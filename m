Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9D0626
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7519EC433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668065454;
	bh=pnGkjQWf49nYcaVGDvkI87ST1Wzsa8xiIvoVLtWkF2s=;
	h=To:Subject:From:Date:From;
	b=R2yws0TOSBbiiv2LfxFKAbWB3vaoKqykaizh7YizYIeP3U5wswGjWUj7ImaB3kjiS
	 zTNZkhd1AhCJp+PMdA1ivQvrDAzQIoYRWuvyHt3gkJa14vXDBY98+VGSOTsKJxyEOm
	 cTGEUkBUNoaQpD70lN9OosM9MtzWimPNxoeWmqiC4JCnLuWiDAz7n+zF+xgS8OZs69
	 vu4tXRwg2P9ezgE14dAA6BcmPhyPQEe8goxLDwxqD9+JEs4nYfJpggYfHKbNiXBU2I
	 fj5sZkkhTIXwj2eEjLnodViFB4NzXsExCRv9J9CbTW4n4Bi8WASFBF2xLaPQK6g1yB
	 vigrBNUM/lyzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551D7C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166806545434.22555.15274413832452961974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640b2e610d3010e2aeda5fac1131bb36174eb5f93bb2e7cc3aab9f6c7bd00f1b
Date: Thu, 10 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668065454
