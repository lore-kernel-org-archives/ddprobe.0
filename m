Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A3452F7B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgShOj/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 872E3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704996496;
	bh=9D6lBPx5Vgqvoanh3y6v30Yij+XV6lDYm5N/5JoBwzk=;
	h=To:Subject:From:Date:From;
	b=WgShOj/RPbM9ZW7j85RtrPhee2pwZtDFxYSN5rq5MRhUyF0l0R/VfYeBFQdAGijY0
	 8wj+B1yRJIZmZO860qvv1kez1m1/iZCTJphqbkQGtxnLq+UGcBqEfGZqo7bUf+CKQm
	 5Z9aZLp0Jnv+i11HViFfIp96Ruq+povhkM1KeMm1dVCTvQbtzgfVDonRNLFxosefcJ
	 RAPDCHnDI0eHij5nIfpymDuzaKYNKnT0C9xIxoKTPUwoffC5l9t5M0yLwwG/95bzF8
	 vhfmKHKgwskWmHHxO1b72mpVweQcNL3c1VATlKwSPfPR3w681t9IeOMIPjlFOU59DU
	 yaob/R5KxzIyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6899AC47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170499649642.25125.9803288472893258914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c96b936fd72437383ff7a8a0d38ce0e0bae392587bf78fa13be3c6283a56f15
Date: Thu, 11 Jan 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704996496
