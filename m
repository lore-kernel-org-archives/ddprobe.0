Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50AC192
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66A2FC433B5
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670209854;
	bh=myJ1e6RO5/9lBXrq/gZfBI4A9rStdsDK+mk5gm4H1iA=;
	h=To:Subject:From:Date:From;
	b=FPs+sPkJDs+Xdf0YiV6geX+nzMYJ1cMh1aPCBP9BGsdTgI+2aw8anVdEPVrzncbvq
	 KGsh0NrXgctXjPQX9ufLu+PbU5iU6bXDeeNNArruY4V4lRhO/yTduwke9tZJz0xkwl
	 VMsnJoGU8UZoRLBTDJmPiLJlnUpDI48EpiVz7mWb55yBF/UzFrl1+gkUEOYlpznZP+
	 R1ZuUCDi7DBc7Igii9A4HOnyt4PBNWIdPpelFY6RZLXcKuFVxaJXfBIoBTVOgvX18/
	 8bt5bdEecwzyDjC81nV1Ol5/RTk1Pg+cktjGzjpqjZghuQpAKJfT2040l0i0EZVrXp
	 mFHe0tsiUwW2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CF8C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167020985432.5086.11201749476179075415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14df19dadb5ee55e7107f2b2964e63857a4a4280ea6fd8b0e24012f63a7303ae
Date: Mon, 05 Dec 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670209854
