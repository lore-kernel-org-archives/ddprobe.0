Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E32302E830
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btNztQ92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D080C433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701713296;
	bh=+Npm/1SVIRXWeI8IkhGtodoJokKrvKnQm7UOKD3P+lk=;
	h=To:Subject:From:Date:From;
	b=btNztQ9255nXvzfR2TqFEE0tFtRHgAOH4Uojjlk6cI1A6yC/ruxXI1ao8fsAq0iPT
	 96FRhEfPS2hTrx1XCG1nnGkDEiEx9vtB/23avuAy/mJvQaHirW/sqQYhiczAApQSSe
	 Tl57o+Yke+ELtj728LZwdLPsyUz6kvZX9flGaR6waDe5lNkszm1wZriSvfObN3laQX
	 fUu2r1unqOWP4FjQLvKq9QZAV9hSAREGSl/gj+A8JPHPFAsd/BvUZ6q2oT8IEgXQxh
	 rkS6cHjYz3tTmro1hezXeQxNbzLiX6e3gw3jZIHjtrTc7W7FKJCBolGwNmtqwNE3Ye
	 2SearGSsSZarA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632C4C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170171329639.5724.5178927452779700496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9296fccb4837099675e8c21da83f2f959022ced9d04d576b5ef4d56b5d32a24b
Date: Mon, 04 Dec 2023 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701713296
