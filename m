Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D735DA3F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C1EC433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670581287;
	bh=3KjLSU+i11M9/AP8m8oziie4DoVBBuRScKQnIlVs4YM=;
	h=To:Subject:From:Date:From;
	b=eQQGpqjIajY/kYHS4xWggjAnFOargXlO4B9AibFmeOiaG+z12nqivJoMdOiRj3ZPA
	 cuYiM5yOONRo0K7ZRnrUQdJqYYusxSA0ESyqBUpCdxJmcdbHMJOraGBCZQ6UCzKFT1
	 6Rnkw8uUd6FKohoj7mE5tJqmp0VjSO5QRJoZb8fH0dGWPtnCFjYJ19QJngNMAx8cQi
	 Jm8T9QQjUnyVtxiKs1K//ZqUk8xuXX9F/d4KwLwzbIFRUHt7NplrkiYlDU9vnyqFzH
	 dtAcjC9N0dEBArCoko2l9+NAiPXscQR80sBOKMGyZSR6CpfZW0GNL+PspFNHL2fFi9
	 2fcCmwEwigaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E06C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167058128741.29486.8774438582304966185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c6b6b658a7acdfd53ff8c26fba026616085ee0bd385faa34675eb6442891fa
Date: Fri, 09 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670581287
