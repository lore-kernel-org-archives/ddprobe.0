Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC28C121
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEsHoRyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A9B8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699938496;
	bh=PNMDx30151HszwJKLrRNbgo5H9UTr69ltMkwz0ey5uA=;
	h=To:Subject:From:Date:From;
	b=WEsHoRyuD4nxnR9wWDYmvKnBUObcEzXZhF0uX7ux4OCwnqzNkOvL10IqFzTIcgdJD
	 3+WkhM1cV/wFtl3UPgG5TnIVbngS2ic8Oi2oARjaqy9f5V8lObKGHYOfYbJgkAKrUx
	 O3FxY9ph9T0hVMsjBX3XY6aIyyK5InKS1RBlhglzWqMl+eqzgP1BovMItGq7A/PRnr
	 DyLqlq8hgnJvc0Ri3S75g5oWCQ1Qe0whf7dCr4FEu/s/XQMl30zwBOj0XXT+dKUTs0
	 HTVaqGJ0KpehF1tvcPo8QD0sYnbtYyaxV6ricja/nXA+rp/StqRtk+w1duUc5T9btt
	 r/IJDu0FUjI9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7DFC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169993849643.17479.5160276146738880376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8dbff89f0db120933a3dcc45f15cbae97a35f23baa6a612bb27bbf3404ab10
Date: Tue, 14 Nov 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699938496
