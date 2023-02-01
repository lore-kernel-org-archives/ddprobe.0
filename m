Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392EA622
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 02:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3691C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 02:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675219445;
	bh=l5zhYS9urq3Afcq9f83maDYqX6UvdN6VnX9twkaPv3I=;
	h=To:Subject:From:Date:From;
	b=mlChHCvSAnitOKAsrYcYxvbcZaxqizxGLC3V0g2CvrJRMzblOaMyFHFcryakyMhjg
	 c1IoJD+PMqjSgCD+npWJgf5QjOvJ8NmDsXzHQDV4sBHyWXzvncHguhp//s3Jkg2giw
	 xYvr8FAc1h5SjnA05JHxITRHN1/fgUxb6P6/bePl7WkU8xRucVvBx+wCnL0IoPQS8D
	 wlXOJkjn9llcLRJX0EQgERjotk3ofZUE+ZpW2pxTQn9xSIpou9oh+DDPQLUy3KFQul
	 fiD5dlF4aI01rjEpq1OqApFW471VSccCD6RKRd17flFQYG7jI+M9hLh+o39fXOgbXI
	 XbvnXRAnjkrHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F44C38142
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 02:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167521944580.26843.12676816121933429777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37209bec95e16286bdb89068598b9336d5eaba6b74112489c83a147311146380
Date: Wed, 01 Feb 2023 02:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675219445
