Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6230715B8
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 03:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F28C8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 03:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681789746;
	bh=xVBPrs7sO72JdyUPNTIF9ijpg3Afnq6tCMy9OchZWHA=;
	h=To:Subject:From:Date:From;
	b=DW55FR5stehf/QN6xpGZT+luuCdoY0MCKf0plNrj9IdkR0MJkQVBL8XbERXumzSlG
	 +mGsUA4z1PktRC0ufCSheoNUPJH+WyypsxKODUZnmiRyKfhAZH2RZyelskVGc2AsQ8
	 z6l5t5CWG91eDk9L7mSp806nj/FoSSnEkaLVBVSAdGEF2CnGSh2vXxPPgaCOkIH2m3
	 HW0jBR+gQWW1+nG4lDGIwUx9f27DptR8/8lEDNTV8lHSotZtAE8q3bGpXInJ/8/RKb
	 WsXXg0QOCBr1s7/jvizriG53rCpP4ev/URIyG7wQMpsgE7Fp08Zw1Ub2WoXKc69aie
	 /RFACjnp08PRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7BB7C77B71
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 03:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168178974587.12193.9803944962005773646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c02042dfebfcfe3ce9c3cd160f2b6f2396e09407b7d55509e2c1f1734211323
Date: Tue, 18 Apr 2023 03:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681789745
