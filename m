Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B89515A0
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 05:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA12AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 05:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693372448;
	bh=jzEZ96ibcBr/CV9QbsT8wPMGeI2tFaKmMamVilxFy0s=;
	h=To:Subject:From:Date:From;
	b=XAJ/WBREv8zzbqt8Rwa1wVWYo4WVbtnLJhqcbs7p8EzkApUy4uu3X2PBPL8sMY6x2
	 S2Rl8swv16nD0rJzmDDVrAX6hZDtoL3/rzxchd10XqJN+o5pyCUBE32GpuEupzeGmr
	 Pjhu6fZsK8Jmc7pnEFjiDkqdPt5irFqZ2RCA/wzBXx4s0Z+x6eryqNzWJPhS4pvT8C
	 9LXTW3h+MoAmQkWdsIRn5oh6g0RXEcDGSpvjZgiRwYzZ2sFqhtEDmGMCrwfTsBr2fA
	 Y3l+iR4QYfek7KizNM5PIdggpNs/3m/5yGvja1210tAW62KkPKkO5Z2VCHtEirY+NQ
	 DL8nUSEBicbIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC60C83F01
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 05:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169337244869.4233.1943117915120630756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728fdd6bbec7bda11e0aa994b3556812349fc8bf6277f7401bebbf4cb6965c3b
Date: Wed, 30 Aug 2023 05:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693372448
