Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3FF2F28
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73099C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661428852;
	bh=DVapx1YZ73lCdW6m6DiA9p+b7a0yUedguK8iBtaYJXs=;
	h=To:Subject:From:Date:From;
	b=eos9bDvRHYO6BZ7B3mcPvs51gIWpF+elyjz6OeQvneTNYiJIv6RP2y2ToLgDq/6vT
	 rBsL9DIs951P/67gs52i8cvN1slF8zahM6uathK5lMTzlfmuWBkiW5RhpEB6H1u/g8
	 hauldGGqKIiETWzWOYk2zXFduvD9t8x++S0PzCIwvPCZxJgs1Mdvl8ehojZn47hTwI
	 poGciV8MpfCzuO11mF62uUiKxaNsVyVKO3tI9klUCLLo9zRVtZVD+UFfNGI010pDJF
	 NpLnvsWzDfYqdqhWGG+7rWOmhktuyPLO8NFbyjQS1YiCy+Wtjf0X23IDPiPtcaBU9u
	 j4gcFtVTx1Ivw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54820C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 12:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166142885233.16016.15898417189241833027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95735e442884b5ec6fb35039dbbfdeef64742f1a90fbfc3c7c86567a3f7d6f3c
Date: Thu, 25 Aug 2022 12:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661428852
