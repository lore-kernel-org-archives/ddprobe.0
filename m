Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01A8362
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E31C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668039054;
	bh=ptaF87Jes1I/Ew4YLro8PCWfrdlapuHwqmATSSqlLLc=;
	h=To:Subject:From:Date:From;
	b=TB/WxOXee4qoV70gY+B0kz64rY2B/88ZM89jGpU6Nakdh/b9exG3heK1J0G8TpY6f
	 Nod7tlc63LzuJYsyBj7ZCMTd1vhk3cgXLjrfe05lurTTK6oNegh4u5WNk7aGYzsEsA
	 4FZobbk2Dw6iI+nVlPjUCx+664nJ17EjdGk/4T6aB88G0BM40pDnQBgKXH6uv02k8h
	 hVHPf/1ay5ImBlf4+rW0ze4kyLzx15IEHKlxD9xCGVZ/U2FaC4hqNVDi6Ygb57X6N3
	 iv1l+U+YC7o3QCE4ncCfyvQXUR3jkH1V7eiPNSktZvQBNPgdmkamIg0z5WO2opNFtc
	 Uc3HhmzWHQaSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF4AC433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166803905436.14192.4027256248063398171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d8792221b9a47bdde6c18ba036e8fd01d7ea508c775f8b0f33799ecbd4eb1c
Date: Thu, 10 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668039054
