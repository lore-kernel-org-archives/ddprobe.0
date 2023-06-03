Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F0ED50E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 20:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01594C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 20:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685825286;
	bh=B0AZK76vpZBcOl7L83ELPBfCmFxwSe0C7e5y7jj4EJ8=;
	h=To:Subject:From:Date:From;
	b=uzOO6L656y2ncjG43Et0shTFnK2iTMfqUL+eeBmHTHYb9zujjCICixYJb3f6o6NI7
	 5l2nlYupW1RYxvBjwENhhLfbpK50DRCFw7WXcsMFtrbFH3O5fDriXWMiNBSBeqNzQi
	 EmU77r1u98YPOk9VwP5cFv2Q1ogEatRehhKl58KLdYR3gR5dhcMGyXf32Hga4OeCOy
	 Jc8JV9/exOStvxdNtiibkte6B9HgvB71drT6tU2fdFSWXo1A7XRiAfwbJ7i+jSLbZ2
	 Kbb3rhCAofyr8z/sYKkQuYOke/pZqFckUyIWsB9mVhjQqyf5bpp/W6n8Mh1R16UYqq
	 IwPK/2EJgd3zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A3AC77B73
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 20:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168582528579.3672.3396148126211402919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba6d04d198e19bb3943d22f5fd4606db8a601aa37737bacc9e901497e282149
Date: Sat, 03 Jun 2023 20:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685825285
