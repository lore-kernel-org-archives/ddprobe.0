Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B874E33D4
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A26C433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663766453;
	bh=wviaNXaxfeNUKjyjzZ5G8BgmWFgzqJetHskAv6Yba5g=;
	h=To:Subject:From:Date:From;
	b=sN3INW81pfhXh83/7qU9JKvo9BWcL3zU6p9mka1sCIBxSUi8ojqnVYJWzDzFmIZgP
	 UDA9WbmzHoay7z8spNxDeVpkVbNW/FBnIRp7Q0cdQSDul95XRer1B+JfsSVP4P8rMw
	 QC/3/W4NhoYWbprA/crimi+7Cbx0UcYgEwOypzFheHl32R+geTJ2PtGEZ778R6qpq5
	 KGQ2yy9hy/wFM2ZRCXpqnmdz4WuxJVl02siKT3fPhg0FiqTJAmjGHVF56pQdH71mQK
	 cEFa21+q2PKT9Lad9YPi0w5hTOgIS5PzdslYKVIQrA0EhRMoauWCnVovRVH9APzN47
	 lEcnBuq9zdSVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52631C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166376645332.28925.7415564566608016989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03b51890837953241c82be1ef9db81cf6fffef936872ec864a9cafd3bbaea14
Date: Wed, 21 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663766453
