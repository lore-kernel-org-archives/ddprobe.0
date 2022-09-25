Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7132117
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C472C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664097653;
	bh=uoJrBL/Lx38/pPrHzeMDUd9iLyAfKBtgtl7qKu9ZIVM=;
	h=To:Subject:From:Date:From;
	b=JnKwG0/dONyEW+Tw9WGE046f4WHTWqI86Y3iu5GeMru/Osk9UDF8RaOyAV+aUH63w
	 L4QHbSd+NEpvxDdseF9MZigpIJfqxA6YKcgd66ElzIPiT2mOWtT2X3VoxIsWLL4nVs
	 WdRdvZ7ubk66/SCsZ9/bX9B7GTWxcQF/0uVmnuMXgw9+TSStBS547YR0OIjs6mvPCr
	 NMeZvAWShiuaQfHwxd56HUaUAF9VupZxhovy2iFO8MGvnnP6HHXZ3nRhwi9cej95W9
	 kpYT0+U/+OdjbFLUmYUBOIfywoFDWAVPH8+ZfZt6qLAgpqvmYcRP0hsl9R8obj96sF
	 5R9lhggI/byvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52233C6FA82
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166409765332.9768.11961769006755007305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5366a6b76906f33600eedf6222ee6c96ba108001f2983ccd4c27269097bb701e
Date: Sun, 25 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664097653
