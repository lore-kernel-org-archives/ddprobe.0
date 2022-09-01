Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B457FA
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6954CC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661997653;
	bh=3qjFaF31F3oaYXLeg63abxGTVfJu59yzd2eISesOt3A=;
	h=To:Subject:From:Date:From;
	b=SObDZ0tR9BY4sDGToRsJHq9LFpjuaeILGuW7tz1HXxHVgParUPok2dwSWKRtZmEkW
	 /vbSJ7lQ7gWE7i10ooBXXDrX1fYvWLXyKWOk5qxCS0Dz2pL2wqTZ6sLDA8vhjQm4mf
	 d/yeFxpA0RccC2t9B2lBiAk/8JzexsKFTgsa/UsJzuy4Y2tHzty8OQp/DR6V3ym4hg
	 KwWLNJf6oFmUDvg+mo5cEBPQ1b9fDoXOnl2yNRtk1h/52svNfIs/r3mqCFh8KzEibI
	 yecNd/LEOu/bA8yARnaL/PxUaiZwBhh4ijes6I7FRIcxSNvfwV/HH+KZ5WsL8T4X+5
	 2eIBbXKDuVvBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 504CCECAAD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166199765332.27872.3361578591487737477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72ac502b14e39fbf5e28494e61a3b3bcea4ec643211513de3e3cdd530d6cf1d
Date: Thu, 01 Sep 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661997653
