Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A518F38FBC
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6X1xgvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F41C433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700517496;
	bh=wyyB9PDG1L92O1PDADXItDGzYiRTwgdAXE0UyPL9bAY=;
	h=To:Subject:From:Date:From;
	b=Z6X1xgvWlZJg0Y7RmtMIoqv3s1YhEDriUAJ4W7abiilXjM8ZrCHFhTM/b/SSG1f1O
	 1Rip9zMYfU5cZD7qUbFPjejnG6oGQ3kibQmBD8z6FpLsB52AYt7vNtBpWtR5vxTbA/
	 81HLXv1kpHFRp7sP6oLFXO7iffmovPp6/vCXn/7Wl8i9AFalhk0JkAqa++T4BRQOGL
	 hi5sekb/Y2rCw3iOZx5JwH9oRyQpyUkrnUVLmbiNjcJ+wu9kSRrCvYu/twnSGeJQlz
	 DOfOYvjz0d/7RjARH9c4fzpsloxZSR2U6P181p9YkXyTduemvQja7zXkBsjBick5pK
	 9+E3zmNEu1Kug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61DBBC2BB3F
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170051749639.9074.14778531135148299298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9084b8c8de9ac58ed77b008aa2381dcd6f639877bba7145209adb876f70dc50b
Date: Mon, 20 Nov 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700517496
