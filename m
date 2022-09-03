Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26AD1FC9
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A5F3C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662225653;
	bh=OxUB8a+Fnd9BLBrXemE8pls0fSYV9gRra8P1pdJrsNM=;
	h=To:Subject:From:Date:From;
	b=XanRQM8X+y2cnh9vS7wTI0m3yzpgLOguyjy6wdy1X1AWJv+E1xHcBsNF7ocvbF5ec
	 NqfRxgMnlFgoE9MXOkb2ITnHj8Jn2oEEFmaSm1b3bDas1cSw0XpbQ0tFO7hzE/0RSF
	 kOFsep8j7+dxUZwUpUq1p5MBHMKuXvRH8yBX0PHDUsNFZ9jfhUo7wlPZ5g2gUOKfa/
	 JTzioScQlY5xRNM/SKaYh0ubvFPr4V6SkLa0EzTDb84lk3hcUq4avWHTqztX9oDeBo
	 HgkVro7C2EPN2l1VdSjEiR+JFjQUhEnrjuKmwWIVkoV4/pD+pZ8oKup4Pu1tFRSife
	 G4w9KgwDV+aIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F158C38145
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166222565331.19305.2474156330899514973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c15e7665aab2b27007cc19df294b9688a8c713303164f2efcd3a4ea58185927
Date: Sat, 03 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662225653
