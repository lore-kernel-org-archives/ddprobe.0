Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3268360A3
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 23:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jy0QCxIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80666C433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704497297;
	bh=a/DQ3nL8PLcMkgNyogT6yezoxjgq6+jgBQNF5WexnVo=;
	h=To:Subject:From:Date:From;
	b=jy0QCxIsB7OgAZi8Fw69kXsw/nJ60nSL9JLfGomIsbQ7NS7q8rYydWUlLD0QMh9CL
	 cRG5H/ksxX+a2VOTw9C49Q41sFt+/dprKZmIlIVV+PGBmCAQlD3I37Fxpw7ijrvlDm
	 mvXgP6eOWyATwH5n49t5AoFm8X/J1BhIFtKpedc1/AWrdY+EZ67Ok42m0rtRV430yP
	 Klsf5MR18Ti8xxnXuDNOQMoctw+zQod9dP24ZkX7xVSiMef7DOW/EAm9xyMbFttcYN
	 JW7J7qNgOlxRiDYUd+GWzz1/mMv6sT708q0r31FjNVGeCKgk7lqdlZHytegBiEkCLX
	 wEJ4cBj7rl7/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A6AC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170449729638.1037.7084319120312798307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b342465a59c1ed8950bac91dbe112b479905d14b7c8be71e1ce4322ca5269514
Date: Fri, 05 Jan 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704497296
