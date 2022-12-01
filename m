Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDA8A28
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4F8C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669855254;
	bh=G8VR9VPgHz74NpuL7hPGVxW+XoA0KmUzVXQGDH6zxpI=;
	h=To:Subject:From:Date:From;
	b=GTMpIaXftu+X1obnWVvzurNQNZehg/cOw8bTky4my1eBSkTyBNFG22lbXnb3zrisx
	 gSILbQVKyzEZo5npsEhDh22XfAtdE2+I0KXLSlhYd2rl8Uezljn0KM0fGwCQOuayeg
	 iAGAsPB7+Vlw+EoML6HWAjP0myGyN1li+5LL3oEH5nlc3J9q0ajejhyv1aNlg+BjeP
	 b6fV4sFvPRyQJBYFP6Kq++tA9USkdB9HcGTP8pSHKJOaxEgXEAUO14ysKtiET+//Fp
	 ykn2ug6t3cGs310sPMFw9KPz2l9Yo1SmdPgYqBcQytOM86WjNhZ77Zw3c0c3HDhh5l
	 j5MWwVEyWhqIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DE4C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985525432.15782.12997805566123088792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6890702dbae85c5e02751d9fea9fc8dd4c71595545c55271d377de3d4bf5d0
Date: Thu, 01 Dec 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669855254
