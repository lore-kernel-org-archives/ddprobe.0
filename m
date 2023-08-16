Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8861772A
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 20:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42EBC433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692216188;
	bh=T81hbdSzK1jQIxT9oswlkIaOgKwleU0dTOSOiq2wd6c=;
	h=To:Subject:From:Date:From;
	b=pQusmK1vcODhGlLCZ1jK1T/xolOLDj4a5xcvqjyGLupr0CtcWjFkUCvEvUfK5DgqB
	 nqsNJkLkE1J0bTxkmGbfJed5OTYg51pAnMtK0BVjH7bBnlUY8dY2p1lgjjpJRTmsxA
	 wYM4hadwQlX/MEWYz3vFBvUOpk8NxeA4x1NzXht1Mxze9sEb4aqn116PH5fPWanSi/
	 waCVqj/ftI/6D5ffb1c0SgYLnMDq8sD3Ksodtf5z155EP24Qg2Gy2BlOLOPOmsZnj0
	 IkEPJ1fh4jx4TW3vmCEGSQf8uqs85/Qwyh6JShVZxfX6Ef4RxM+zbMbbLEAGOgymNw
	 j1PZ5bEauOgiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EBEC19F4F
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 20:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169221618866.17582.6913192267911115816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b4fd65fca4e72cd5591299cc37f7fb1c12de3fb36165767ab9453d7a7d1456
Date: Wed, 16 Aug 2023 20:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692216188
