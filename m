Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6F8107A6
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 09:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD261C433C7
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 09:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696410968;
	bh=G2lim4dEDag9+gsziS+k6SLtehECdQ96WbHa0Z/pub4=;
	h=To:Subject:From:Date:From;
	b=L/EDR+16yw4xhLa6azcEShITTaN4VfRh5JIMLB9juZXoUzTa8tana2ZIpIrAn23a8
	 IM6NZz3IUdKmJIlPY+BWMHMNndQQx9xLIV3EXHq6MptR9tMUGSQynrscrC5GtGqkGC
	 TV61vQYJdGx4aTOpYZEHPe+5ZyN2Dwarp2VhPPIPhW8L9Ke+LFPqmvdekhgqi07DmL
	 UNuj+0CfrChVHy3P8f/Jpp4aaoELofSd9Y6h8Fp8baxBzgdrex/55uHK7e+EXfjrTR
	 nm8qjpNyZDYqOtN3oaX9eYpOQOXCIH4Y2ERlbQyQIfsqNCAWmUnts3aLpew37cxmn1
	 3BbG59hjapcgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC396E8FDDB
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 09:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169641096869.29533.2797864625473204982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a45dbf0027443f44a3309d0c4204242b2a426a9dcf7deb676d9b15564cf37df3
Date: Wed, 04 Oct 2023 09:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696410968
