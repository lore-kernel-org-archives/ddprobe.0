Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C386415C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73D88C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665543053;
	bh=gBRXX4KwiOCC1kIOdvXRml/8GH33knrU3qUdZbafijM=;
	h=To:Subject:From:Date:From;
	b=moKPksHRVvP1mCxlZV8eXhoueT26llWNmx0ukjTK91bIRvEhVHTLzWpkKCK3KEljA
	 1OxgA512E0QpeZ+yO1nP0lyojiuQgcloXGVyHz9v63TtGF8tb+EMT5Y6jFqWO5UU6s
	 BleFkJDEp28t5gh7/7gIAkGwYQKq6FNQzfXh4siiu6XX/Y6qH4ID2HinS2I2/D1t5Z
	 v0U/+Kk+wo+EAhAZ72u7ZlEkBRAHcXMk5FWVoffQ9NRY+VYa1lwV/QjpLTVK2uaqUd
	 s+Mgi5GAPnEUpGIC6sFAGVa9RGh2zorOuPM6WEgz7DoE2PMboRk9frERVdsEBCU/+r
	 HFYlA7gxT5Nww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A278C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166554305336.7305.16987087145064593924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b062ff641fa88c0790bfc279496539432a0bce9594044369a66613dc120ad022
Date: Wed, 12 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665543053
