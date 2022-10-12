Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADBF117CD
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 682B1C433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665574853;
	bh=Ls7L/44UGSkXgobSbsV37Wclm9qT3Y7/pP3GhSrHxyA=;
	h=To:Subject:From:Date:From;
	b=NPwCPkwV2fQBud0adVvvGvJEtbkkhTb0RvuccZSl4TuXVfm2WEWzR4/VVOr4yEpXE
	 J+A5qgR4bg8Er/cX1LgmGffgALEOtWFVR9TwChDr+r9bcMpdsD37JUabWw2cWLs1Rg
	 FHTG0L1p4j2x8FGprDfoso6kfZ0rMoXCP4vNj/wWU1RGM9jFbsyML/oRlGN3dOm/xA
	 Epb2PJMVxWe20VAP+5t6zbXYoxxfZLSZLOFK7moGk4h58SpnKbDEmeLcK+a67LI/1k
	 dDyGE4s4xVclQOM+IMExIeqElNu0bMbLon0f3OsJfs+F15lGt+1wmtKwNnkE1Jqv8T
	 adUXPCnkmjWgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A76C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557485333.28618.3087668767925185029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e07998576742fbdfd6f417567534bed06df14953ad14162c8c9f83ddb4c1b84
Date: Wed, 12 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665574853
