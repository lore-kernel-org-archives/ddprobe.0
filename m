Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE02923A9
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F76EC433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662278453;
	bh=+7jA6qrPrJC6lhfv/LoffUy5T/dhovmaWYjbpmx7uTk=;
	h=To:Subject:From:Date:From;
	b=SqXKjmCZVS0JiXewS8qw3THLy/X6iCOsJUQLVMsEM2hOOD9nJUW8D8iJUfOM0n0SL
	 If0bVZe2IfiKbQMHY5tupIvM2PXuIrMnAIR8kjZ/Dtthu0enAycITzpdaQsYxqCWC6
	 egMASqeXDiim2xSzSbpO5W+Mn/XTtXyals/SLEYX/GDPiagdZ6uWEM3JcdF6SUgx3b
	 oaDbbeHPzrPwJ6lLVZCJv1N5eQxsUYxjY//Bl1YI38JogQcUHpbEBqiVeEgIBuRF4M
	 bkE20RKYgck8fGXySbX5cXPnSXqmOhcfKZ44EsmAf2uQEe+4432eMSoonC7yfor2QF
	 kOQgAh76m/JSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A9DECAAD3
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166227845332.27084.1611564218323061417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d56870fa87c8d63d9d10223e0c0c1f0077b20f2988f8e6b6ebf10c1bdfa655
Date: Sun, 04 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662278453
