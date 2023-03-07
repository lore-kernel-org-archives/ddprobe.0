Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C72361
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 02:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01B08C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 02:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678154946;
	bh=j3gYn8NkEibEOSZeHhdxJ8vDIiHL9lH04bWPQPrcIUo=;
	h=To:Subject:From:Date:From;
	b=tjZHP/XXJ8zBJiaadleJCgtl9yVMkoI1sttCz/dbSDZ3sTAbkPGaCZtnL6QtE3lee
	 8YZLi5m4SYC03gyHIzB+kxaLfXzEsSrR86jl1sLlRBu83qElrF5TkJmf1iOvGT24UX
	 xTFM+ZXdU7cYX2r+y9BKvTMdvbr7jAaPrnQAboJmmJehg+T0ZFQjSeUk+tSFsngNYR
	 ZeMdaujiFAQ3oWiDrwCQ89zYYwrsgbcw5oa+GDa5qZC0kr3NupGAON6eNeKr/VoHsj
	 31uhU0/xV+onSW5vc9VXPWLDIhDl8Nx4rfmNFdhlnOT30T7E77NsFAFxmd0mPsp1mB
	 c0bO7NDjCtWEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A77C64EC4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 02:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167815494581.12180.3738626931971397998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a06dfab7594306c983534f7bc10e7cd872ac98254a62e0fe556b551d3198a3f
Date: Tue, 07 Mar 2023 02:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678154945
