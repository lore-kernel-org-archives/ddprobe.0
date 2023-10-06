Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2D5185B
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 04:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM3mC7xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AC5C433C8
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 04:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696566428;
	bh=LjUympG1in/B29+J6FDRoat5Vyk98kNQIDhOMmvV6X8=;
	h=To:Subject:From:Date:From;
	b=nM3mC7xcj0UUa3spRPnJC5Kx/VeY7CT8kK1DZgGTYXiKC+Xwqlt++kG9udJdA4x6G
	 lubr6vixc2SlgrxHKIEcnzt9rfusEe49ovkagg1Y3SGFTk4lPPPa1J/u1HdFNZ5r23
	 +B0voEaPF3JY19c6cEjqD0eIMTBm8Ph4onLWoRttAa4HM5wsnJH29moWkkZI2SKjNX
	 Gw1kAQdSZ8vRWxdZsfPXn1PUkFSRF9ca5TDkqc3b3ZxM1kMkSM4OcDwadfdrmLYz3J
	 IcG+zzbs3tF1G6+CiXQqEP/dIUDujMEUOicv+VIyDOEpyTZn08YP/bPr3yHI2t48hb
	 6LaRAS1RzVjkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A40E92FCD
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 04:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169656642867.10644.16473959488943738059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0d6111010fc3c661895642dbeb3c7511fe971b15cf32fa1eba5ff2d5657f82
Date: Fri, 06 Oct 2023 04:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696566428
