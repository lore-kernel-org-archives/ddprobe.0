Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AECF286AC
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJhiPpRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B5BC433CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700831896;
	bh=uxRoDmTp2umk/OxnorRXczyDT4DVH/SBlcmOP2w4ZBM=;
	h=To:Subject:From:Date:From;
	b=XJhiPpRsa5r40Df7cpZCnsIq5xvVuee2HD7oKNH65u7qXXzYvKEGLpPKlji8fB3Fb
	 mLHFSrp7aVY0bo6mZr5HL6LOqMTA0+8nacsz8bRbXa6z0s6ou2ojioI+9Hg+0wbyig
	 P7tDtcpY9gPdjQIrrkPHzby8qY8T3CnFaUtJC1FqWd3ESS99tu+t76sPWEC373Sv14
	 RIszNKBYpMxEl2GoTSYDQE6gyn5ML6Wa6xyMLp8+LnuWr0quEIILJiY2yR+lDjrBdl
	 IGgKRUxBzfoPOxCWeRhvqH0DihWtvMcSTyZTnq5WpoV8B9CMtV2xFG4wiqYPu5Koti
	 bkl27crIi+XmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605FBC61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170083189638.30476.8971336523434900773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c65d4453a6ffb48d676bc648c08c8b1a8a1c445523648356754f7fb28a7216
Date: Fri, 24 Nov 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700831896
