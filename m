Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A2D7ED
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 14:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5376C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692368048;
	bh=5/s7jxLfJl8ROEVuJHVzPZulUCsF/aeYxXwsSOBWHeU=;
	h=To:Subject:From:Date:From;
	b=EhmpEwYCgnbgkCKU8wHqxB/75LnK1Vs1ztmY+w4wJvXsl4Y2yfuDeZep6L7aEepB7
	 zYxjB8XP5+PZlOn9YP4BWDVwKgtxd7kPVlMhBu8WV1IGJuCY6GOvkVo37UxCLxG2ld
	 dz6llHQN3kCrUnCvyTABtl19Beu5lDFGhAlZNnDEpc1hYFYX2KOcTOQXmc+lBlvXYN
	 KcqCJQK4IRFGsROHZ6EobaYP4FyioTw+PNiEhrTMrdyU8o9b1eTaTGc/XCbBafT6d3
	 mPUZ5z2xEIwCdhCnMzo2HTVMzMapVGRM09k0nZpT5rhc1fFj97D/2ZZsnTN4i2vcu1
	 DkUPmmRx7PRGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6158C71149
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 14:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169236804879.23986.11234236858279358982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba67487f324669fd2756c6a5e61d1a3764491ceadb4d84c5772b1fd59a83c001
Date: Fri, 18 Aug 2023 14:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692368048
