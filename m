Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CA918F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83647C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669507254;
	bh=m0VZPSnRwxvV9rLaP26vXVEm5Dpi+uuJooEE0XgnGxI=;
	h=To:Subject:From:Date:From;
	b=LR/xh8jryI1v5A+2iryP/3OgZj2FgkU3m/1Y6dNoRqOKcwRg9GUtnNHKXc/l+Y4kh
	 xfEeDhFYVOWb03rs89WBMhBjyM6VUs6wHvwD5dWmpAxv6PjNquHrtwWRn2rfl9IOH5
	 gfpkaDPLYopVoeE4B47URiTUBeamT+5Fb5N7mQ0ifTInhyXG4nukHGMijl4y2vwt8T
	 43rpMfMJWD5ek8c6a0/J9vupojqJT/Rx+pNERhL5U5RJT/8dEJoWfKolDYY/j8/Z0s
	 hbNrJu01m99XvWhiTfnidA/9wIn3VsfjcsSGRtYmPr/ifNof4aVPnOQ7r7gfbweu9J
	 bbxS3z5o3zi7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F91C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950725437.10487.12007098278239384603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c9e3ef44338f4cdd5fbbfae0ae2dcc97918e883ac4566324d9bfeece76cadb
Date: Sun, 27 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669507254
