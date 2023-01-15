Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238EAA3D
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA961C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673757687;
	bh=NvkvowXWoHcx2smcJiihQIoCD7fZFcY/m9ggbaKtVfk=;
	h=To:Subject:From:Date:From;
	b=URMoUz/Uj+zIRSXbcsHZzOhiYqj7NzqIU2RooYH32hxY9HzIi3rGneKXEPm48GIl7
	 wNUZF2c2+ivJ+n0LXm1TSYmKNeBp1dyuqsBSB3rGK+OsEfzWLQ9An+5A/GYwLSe3ap
	 /YbWHe5djMx+qW8T9FTP7a6I0H87bInZ3E73TjQqSaF5rvsv8CT3oZGD+0Xv5QUcdX
	 OOJroyvjKGQRc3P1XMBTxGniCkXydIbtBAWBbcee65eBb3qhhQFkeO0INMtrxqPo16
	 M41UyGW1NSSrmjqalXsgE6tVFV/E3+hSwlN8q+Dh5vgF1Q9UEp8FPGppmhZv+zhl6d
	 lyNB0GdyrtM5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90433C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167375768754.8629.10652536196193651390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab67fb9bd31c9f7be4c36fbc33f5bc5819a392ad88dea0c10f91a41c0b310333
Date: Sun, 15 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673757687
