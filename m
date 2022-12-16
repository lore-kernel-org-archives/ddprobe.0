Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9841371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EE03C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671168687;
	bh=wO3FBACipJR1zaVBXezRcf0J9ZTMh1gWunAOkWez4fs=;
	h=To:Subject:From:Date:From;
	b=KWZWDPa027s6OVZyhcvNRaDlVrUEk85fK+UyF77ZZqidlirhb1kt7C1fjPleDaVvH
	 KHmjG/TwbBqkW5iQZl7dOhlNB2sp8Sr7R/a2yUH9n5T0R0hH24Gxml+D/rVCLL4Fb2
	 FHIBCsuhXBhtvucaj1x4H3lPN+9hHwCQlQ7O86xTdbKIbBLByWdi/aNbWhmC3p7Dx5
	 mEADIa4q/WcYKS/cI+ZRKc3wSgmRFJzv8O9/K7j985zvBkJtNvK4+trR1XJCgoSn6R
	 NwiVIvWc/VEEUeeWHKTInX5euRfHbbVmulwcp7QD1o4kDmzhFmqMuie4XgEWbgEaoQ
	 BUJ+w3XKCuofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628D7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 05:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116868739.17360.3688835748358496401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc66a48c9b1508aec05018fbeba5e2745202df69755bd69d71501ee9337ecd00
Date: Fri, 16 Dec 2022 05:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671168687
