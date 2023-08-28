Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C01710FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 08:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26C1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693212248;
	bh=sOA7H+S3ny6oQhsZM2uX538E2vP/VgMFung7KgaVmmw=;
	h=To:Subject:From:Date:From;
	b=bfI/to2s5fIrpPQoI0zes1QbOsFBq/wNA901T02mykFyiBO61tGL32Is3y6mcihL9
	 xC9kqJbQ3AshnSYFiRrGSidmhjGShzxtIvfXS1expuxo0WWt9i+6YIN9E94Bc+kF2h
	 O3vTtRMuhVwY+A8zmf0LtciBnxPVD/HyQIByb6tNyW6sjBl6f15t/XC2wVs/NJCm57
	 TCMEnh7NZapD6iNbLI5nrNtTTisrxdWp+5+IZGmODTwh8HVxRmKUSriDmjQ8gaxska
	 QiISrug5iyRY/t4WBItq8UCn7Y5iyLsh9gy1DSoth7Naiavs+ul7BAZIwXsuoQy4S+
	 jrWcht1mwz2Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60E8C83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 08:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169321224867.27063.15595019812510748040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6043e8f78c876c2341d71b696156f2246748b335db4224a272407223509753f8
Date: Mon, 28 Aug 2023 08:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693212248
