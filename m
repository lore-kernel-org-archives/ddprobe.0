Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D86714F89
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIfEU9nu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8499FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699806496;
	bh=2ASxCkXYkpBeYTeQ113kXnmlk4+CwxCTHz3Bw2Q2GXQ=;
	h=To:Subject:From:Date:From;
	b=hIfEU9nuDt6es5lVvSav6IbTe+XOsYrN19GmvDrdE1Zb1aimJKJgmrYPg5rSPnipM
	 HKJiWxoxzEvKijTgIbUf5X33Tng3AQb6TIdvPm+0Xq/8YBsGyLOUAoJgrNFsu9GN7W
	 gOh9c6XpVATR25QDZcZHIjdwTSbsqldsFZcux/7kdxZgQwSUCVifsmGxDdAKQt1Yyj
	 R8PINtjr+7Y/HTkb/TrHXl8uKZsPNqmXtLhDrEACjnZQYrHQPtVzV50NwkADkVh7+T
	 2P+7L6R016kJEh1hNjwvikIBJVTXUF0MO9OYvJdpjEZxfNW1HgHTaNHMns/GdbD9bT
	 2t3iA3G/prbGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C247C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169980649640.21765.385659591574680821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a46b0edb7defa75a01d6eab7d7d637ddcbef4ce5ec7d2df8d9ca247dc80fe7
Date: Sun, 12 Nov 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699806496
