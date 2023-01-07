Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5FF10FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96538C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673063487;
	bh=3Fb7HZ8HRv2HYpORz/CZEeDZYTl8Ph7EZR+wykKHlmo=;
	h=To:Subject:From:Date:From;
	b=ruHRhaxlht6MkwQtjuC1G1IUYGe71wfJ9IeWmGjrYyn9yCRNuYO/rV09+iCc4rzIP
	 URVNwvrNu6Ws+BJqECVwCjE4gXejs/1IQuHhDmN8NcrEdo16t5dYNUlN0nYac1Udwu
	 cpeMCiMkmHvdUYq0oqGRiPUZQJbUpeD33dAA01TXz1eng7kWnEF8UtJssat5vqWhvC
	 CzUjqw5TfClKtSyys9lJWmme+Knhta04x2cFuWkxGiJTWUUS3uYf/K8hEFHgplHICI
	 H2dTYrc/y6IojY+it0ZdqySfm+ahJFN4GQHqDol2Nj2Q6wfKyyouJICtqZzAqNBKQN
	 DNiibjavEJKgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80B45C46467
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167306348751.10296.16819003871422004572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0437ea71c2336447a3e46a4285cf60b92eaa248b68decc180ef660e3dbff9e9
Date: Sat, 07 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673063487
