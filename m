Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C497853A4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F005C43470
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661788852;
	bh=ayJZx4Frz9lN5GTtObuQno9pt6F1CWC+5LDIFjOxw/w=;
	h=To:Subject:From:Date:From;
	b=Zv/SZBt6rTdgysdmuBvw6syNgmcWuuKEUNVfPEcwLYvvAQU9ynN/2S08mGrCc3Udc
	 dIrjY+r7nv8u2fjarjLNc6CFsjoxAajcWf1OkQTl83DDy4BkpBf4HZKZ9tOlwaRRRZ
	 F8dgdiNwoCf7W16YTtZYZs9zO3WHi2kHuzAUrqvP5Pg4hqLE8neMFZwYcIg4IdRsLS
	 rqmhVVZBr2IQlIX4CPKO/nkoRyFjauMJ+2mXjIqSM5+D90Hl3Wl7goXk619j7LEC4P
	 yCYJ5iP1DULA2wzcLvwQylmjrQ0IFpRdCcVDYvUaOMp9DhW92N70NWJSw2WQqW9hw/
	 wFA6N0l0ztyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55EF4ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 16:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178885234.1805.4314885119967838820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474a6b751a25ae63e0fb900d0ee4eb1fa4c921dc8f891b7810e76304ef40fad2
Date: Mon, 29 Aug 2022 16:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661788852
