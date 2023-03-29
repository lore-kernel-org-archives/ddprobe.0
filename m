Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF9D3C0A
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 20:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB9C9C433A0
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 20:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680123486;
	bh=J7zYdNrqqWcg0y6WHOMzXpB2VnyFGqnSUguE1vtCCSE=;
	h=To:Subject:From:Date:From;
	b=rgZ2hpCChtY3D/698tYpICWXEwxjIufXs+reBwf/3UukSzRPJZb6MT0ZMsYhBditG
	 FtTY0TYFU32qT2a4kcyf1xp8aAO+L5gV2hX0Aut/OhRRak3a2miWKOhO0lYvZyit6p
	 fncQFUwFCviyRkTvA0unBcFnEwCgMkoiBWl/ZT85tO6fagVaIOrOqcjp5DZWJmorlA
	 eeQumcNebQwO7trco06kGtLJYON1V7ym3pUzTs/JYhEzBH2vO1nNij+urYHBAzwdW8
	 mQU+0x2fAoe9SOS0SpogAcsbfUBgSgnw7yDf+6t1xGFq8EGyUyDHJB7tdpSFnf5ldz
	 VaivFFWeajLDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FBBC6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 20:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168012348574.15761.2702283568146259621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9056f68cd42530d1258694c8c661aeaacd903a3bedfa7ddfc11d3fbf77996906
Date: Wed, 29 Mar 2023 20:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680123485
