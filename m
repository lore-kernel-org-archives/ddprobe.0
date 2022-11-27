Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAFE17F1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ADE7C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669534254;
	bh=d2y07VKrUIMGQJNUFkP4mYlUrFukxxqXBNKwZoXna0U=;
	h=To:Subject:From:Date:From;
	b=kDWrzTtwfzx5yS25xTySBbJhlviHSReDPnGBJwrcpgpSb40dKF8E6j9AHs+iKcn8m
	 IorN9ttevufWLSMrXDIUIl5LEudPXGD2xfU/AS2B81mJV3s4Bo2hc7O9c8UYNN1jhN
	 J8cUFgW6Bo9ua+4oL5YLgEaq35DRsIuwe2tXW/7M8r8wdOfMkmLzBPp9SUqVDxTwfm
	 NjTI/9g/LuIanlJEXORmwWMCTgWDjDnyavHXsvb0eYK0OEAr7Lo3UXEXRpoKyt6Ihh
	 1AQJPrduawzXF82ygLrI+LGEcXkj/bUwkpQig92eLlQx0yn8JhbCqtA/wsF8QGEx6Z
	 0+UmfWdqWb5ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FFF7C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953425432.9888.15451953156435485932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef69be7d5170fc9a3fdaca35771230b950ca1d73be9ca17bf85376e76802dd26
Date: Sun, 27 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669534254
