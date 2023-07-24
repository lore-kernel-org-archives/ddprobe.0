Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A737A44
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 03:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D6CC433C8
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 03:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690168928;
	bh=iX1yOpmxZKf7jG/AC0bZOPKhuOd7St/TCtjYHOc9Rp0=;
	h=To:Subject:From:Date:From;
	b=vBySFOWQQd951+1gOphlo/JPmTlYTbFWtw1lBY3TZspl4Yn0R5vFWBBkOa2ee6QGl
	 RZIIMn61NeMuIjWPEN9tuuF61O3pkcSrHUN6ENKE0A00aLNBwH4q6Tx29Of6d5eaue
	 CX3ogAQeCk/kMGwWDYPaQ7V+g7UUukiG7SbYycP/ajwNX2Yt+0m2L0lBtiICx4SuVg
	 4N02GYbXNxafmJ10G/r6IIQ8eAK7D6W59+cXzFzw6mPH7cQC+jX9KsYogVuuH0IVbv
	 gR0dvneGZ/5xmqjsMO6IgzRX0UULHVO71bjqyHh4eKBH0/HE0O+j+/BbgOAYNbyWy7
	 +D3MKvGTD2cXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4450EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 03:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169016892866.347.5036470334024000060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f6228f8961523ae3a822c42ae5755f62271dd85536201d439fd878efa65251
Date: Mon, 24 Jul 2023 03:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690168928
