Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8CF31847
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82A6AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672366287;
	bh=v0lgENNLDeMxkd7sOQtWhhDFXVqJQAwxPDNNb9IWApY=;
	h=To:Subject:From:Date:From;
	b=id/o8rSuo4T+/QWFLO+3Y2hZ/K1rLtQJHaBITMfsJG1wFvFoa9muGq9+62Odarlr4
	 casdHGqfjFaTt7aYQzbY9uJ5eD0W/Mchw4s7uHYMzK3rvYiD+wWc8lXSmuYb1soVoY
	 sRnLS+GIbfqmMnHuh/QTgQEvTV+mOZN8u9KL6Hq1XeAVf3JG2GTCus1nLGeZGBLzpd
	 uyc1NWxUWZH79jNVdeXmEJihJ2y+xneneqi4KiCRhAWdaJb6j1Wv9sZMmlp3HjcBIY
	 4e/arBNuvrYQL2l30Eb9fIUHOUgUFBG7JS2NkZW+zb66SN0uvV8p/rGJj3y+1jPofA
	 gB04dzpZIpeUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67015C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236628741.5407.11442139748997038959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 016a2cddb45be2121e001b0bf57e76a43e6623821e92aa847fed36fbcc045bf1
Date: Fri, 30 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672366287
