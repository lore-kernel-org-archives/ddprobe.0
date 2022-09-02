Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE24710E8
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AFCDC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662076853;
	bh=qXDOUbw/3AoODcTYpZyfAuGVFgurDTTxgh1fR431dko=;
	h=To:Subject:From:Date:From;
	b=aPr7pSxokhT9EJ7Z1IiUj7vBIeRHersG39YbZCylwAsNUzGzGUIPJXuCDFKapGYh3
	 0QxRFZ8J8IIhotr+Fu/atBHx7KvYKohb3CziztHj3QhIogTn/a8c/y739O6kfirkbC
	 Pm/a4W94fDljvGRWmIXxCXkAOjoobEDwzSlPl6wj3hnL9rs16XSbaZjo3RO9JTaTGt
	 kRDkitXuO7dAjLOb6+weyqb1Cg8bQlxBtDiRsTybmfQSooHLXENK5sdZcOAPM6Pha5
	 HgjMsM7z2VIh29zZ9Oj+gykHdr8MVG5yyevNs4ng7IBJRqF6fQbw8sjC9xuvRxNeS1
	 k5BnvZZLPn9CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52167ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207685332.8866.16645643233405621999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072490b86b0845010f007ce1c8ae462aa1474b602dd1cb7b2f48c16a955c53b3
Date: Fri, 02 Sep 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662076853
