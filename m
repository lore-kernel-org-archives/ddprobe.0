Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2312928DBF
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXAxyJKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91D98C433C9
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699283296;
	bh=Ud5hInTr1Kcg8la6UCUv+cphXiPHAgaSgcim6LnLexc=;
	h=To:Subject:From:Date:From;
	b=rXAxyJKKo1TBSiin29R+1UmeCu5aFDHrKkmAsEUlf+ym2IxcfGEnnCSZjQbDE93+9
	 EGEZSWxxPJ6bFEjP5NuwkWwTce77RrCZog7CGQq+xzPVPMONh6mbuO7Mad7Zbvj9Tv
	 2sAj6FvC/B9BBcxM6JD6y1jtxAw4vikSaH4H2WsrtWU9Ypv0JTPb3iWAHPRCZoBwOS
	 7iNlk5NRvl4wZXKxT/wdjXV0aBdwo34fjHKGj2OhHa3frAKSYv4Ny0Hcy6AocQdvEQ
	 74i5iXT8eRTshC94Do2OZMgEbb9sSl0XAokLDtQlRuFrKtWzuXq1t3woKRecLrj3dg
	 jvGp77FE2pX3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A44C4167D
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169928329645.27758.8400680039325831453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef3f4f06753e322cb559727c9efb793650abf8ef412ce8f60644bdc88589abf
Date: Mon, 06 Nov 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699283296
