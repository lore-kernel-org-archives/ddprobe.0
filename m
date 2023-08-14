Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1C12F44
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 16:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31FBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 16:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692031388;
	bh=QZNpiXKp40Z/tqIyCCb81logDiQ6pyolVwkSFsWCvu4=;
	h=To:Subject:From:Date:From;
	b=ropfYU2Xe0eGDeYnohQa2G6sokEpoPec6qI8tY7wXPO0QdV0CmuLlY+0Dz2qmwPyG
	 /9Tv0ZsVODrfbga0jic7y+Ek4WsOYBPO+d+YOz3MXCfrcH/uUOjXZhBtS6K2F9EBnI
	 yi+GnrAv3zg78fAZ2D3vvxF82JKBzK+ypOmrztdJk2OGS8mewEKzhML0WsH4Ct2eJN
	 soNgrjEFEFZGYSCCGkG8sf+xWpFi05hsPREBJ+mP004nNSAwGmohrtaP8bY9HWqud6
	 yjuasCYV4DM4INxD30nx4Nvlj0ffwrSnikjE26VDNBLp47CMvXQ2T3ojLo8zWomDsf
	 6yO7Q2E3PM7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C1BC001DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Aug 2023 16:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169203138867.15850.3760096575915314177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f30b85649b107eadfe789f63efbaa54deeef2f52658c1aa561d8f599220995
Date: Mon, 14 Aug 2023 16:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692031388
