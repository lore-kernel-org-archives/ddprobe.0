Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499FF1868
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 19:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F12A3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 19:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681587846;
	bh=bxr7sySzTaWZMyAYjEOUTGMEfRuiDctztFUn1r+I9uQ=;
	h=To:Subject:From:Date:From;
	b=BII7LT3PFVSTfnVANtvTYokvPOiuM2WRfm7Z0/KR4yTIf+6XCzHIXdBTPCOAZH0sS
	 rJCMKQgiUXue3JCqjthXzn3o+0GT+J2ZcS4WxIvY3rjh6yoRL931cFWau2zliOxWGg
	 hs2FpB4kJjEqlYlCKgUGUK2DZ34weVxiCUK/p+rJjL7gqAsXPMzljHsD8IeekiCG+f
	 iXlJay4aU0EGhm7Il7V9RuijoXy51FRPvyXfiCMpgHGtta1lpVIRIwOwRf0NzJgmJx
	 wIVtwMPxenwvGtSnfVz6VJEGfQnWcmmfj6ALX6tM2dGxM4YXrbBYAm42vSdSppz86e
	 CyYAx5TEt8JqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C723EC77B73
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 19:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168158784580.12106.9924276278649198179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23001fb528658ec59d3cdf255c2985060082a7a6ad91b8e0979d798d0dfe9cf1
Date: Sat, 15 Apr 2023 19:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681587845
