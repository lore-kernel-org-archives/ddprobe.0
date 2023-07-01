Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DD3EDC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 00:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC39C433C8
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688172788;
	bh=X9zUtzktEl7XBhzh6Yvz+qnfaAv+Mp8AI9Rvag3SVaM=;
	h=To:Subject:From:Date:From;
	b=LLkDbutVLH87ZAhzX3CzjFv5R4HSn2Cr8HhVR9sJ5w86RfdoH6tOG2KWwNt7SQFKo
	 4jUGFbBBwTbbJ8Lt8A11CNBbeP4FxIJ/J/AGsnyP2m9jPMjZbTFGMdyPR8GuAyai+v
	 a6IoLPK+1rOi9FU22LERaYdi8GuDyPc6yDbRTacKS1hk4dKZ22om+dUqAHhwOU/2uh
	 imgBeFijncVHCLBp/ouZHKOoqIECKXVwhEotsDjP91LwljgmiqnfRaqyRu/icaG6I/
	 c7kielBaINTjo3IFblx8GoYsY+jlR3QDqYI8VGS0lEIla0EWUEdqRaGKi9of6r5fMt
	 nqMAKl5L3cWWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4433EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168817278872.18126.6716509589599944588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fd08ba94bf0a9e85bbb7cfdcb12d64c4c0330164be19cb086989801c29da93
Date: Sat, 01 Jul 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688172788
