Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41EB7C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 11:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F307C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 11:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661687452;
	bh=T68kZwSJ5+KRQd+jyIS5NUFX5qztS15IZCPkKjUWGWE=;
	h=To:Subject:From:Date:From;
	b=rF/AKS0EgmJxCd30zvgHJvDlDsMpPLKVJgkl0WB/pMjmgdWYiao+BjDc5P7mm8x4k
	 rDcOf1y8/BQjM9zwvif+C6sL6hfHDUGTrpMV24wVmJUdeMz0EGwFft/Qn0gfxxbkDI
	 d+KeYou/I4stLVs0VEpvJmlg6c8AxDN6/l7bLlFibt+q4sYRdK26bm4mNAY/piw1bt
	 n7Es38WTcuYxe5iT1u5Y3jCziRyx5OHE1EJ7KgZNEwSFJIz7oIw1wHmgEWvgSwErs7
	 YcNR1OTLv7tSSBVDHf7OWncIkE3Jq98/aU084f4bqfeWPpECiCf6f5VXmkJINY+mIj
	 M/THMtbhagRlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E59FECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 11:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168745236.23451.8362762752554032324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c6a2c8fe0dd074366a211da5c53dc15737940d15625587da08a06c72eccfbd
Date: Sun, 28 Aug 2022 11:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661687452
