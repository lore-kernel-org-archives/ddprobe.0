Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645616FCE
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5561C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688563628;
	bh=L07UsQZEBHw8bjAklde0HF7MGjXOTo/126LHdTyAx2w=;
	h=To:Subject:From:Date:From;
	b=AIuXk+prrVBL04hE9i9ZBHjMTzkt63JTAQK8Vnfb75oF2esgGIF6YxWFPR8AYdiMz
	 USh4qmSUxYRzN77s4W8n7aD4k/myWNIhyczP1ufK0bSPwjs2htKYKA75do9qy6X+YU
	 Vd41ZfLd2lBQw0CVnYG6KQ4mKAbAJZukUDe41gSPQFXmPB+i4TtQ0VsCkyGETXNC4u
	 9ZOCBWJuIGu0X1xNJuuG1U2dyFxyZs3BZnR+AScI+lLFSWMMAr6z/QYRAooUBauLLD
	 Sh8dbgYUoPPtG7r7tJqFKTpqnP94xMWW5Lb4I/HpZXam2v4SB5j+Hi4YQhRN5BCOGj
	 sC+ezo1Ixz+Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AF5EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 13:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168856362866.26717.7439911263483081968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0df5a8fd902abaf4990be1083f7bd184fc467e9fdff712dbaab63c9254a2d13
Date: Wed, 05 Jul 2023 13:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688563628
