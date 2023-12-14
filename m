Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078EF6AC0
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOKpV5ZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 795F2C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702533496;
	bh=XZ+g5YPTjZzrpmdRRPBk0scBMAWLBayzLWYcKpOpm1M=;
	h=To:Subject:From:Date:From;
	b=GOKpV5ZSkXWsN5O15cA8zwbfWXoKUo3izTkKAuSETFVZMUGx85oLenL0a+zEgDodW
	 bXOaIadGMa2JaCClviuwymfWcgyMDfNNfBSObmiZc1eqAwjNDlYsYrgEZPQrVYT/N/
	 pFT0Uqrz50N9X6lwSWpEsxTe+3hHABoNMkImp45QR1imZaxP37buYL31Kbr73uM+mq
	 wz3mEsSEOk35O5I1vhugQpEyGdfce8nDKSmJhlibJPCosERr5nV4A2Y6HQd5P16vSE
	 u97VIliJpslLtmM8a8OW6gfOf5eqzd0YDj8CZv+MswH7Z4ikcCAaXcsx4rs2/Wwucp
	 04lmDUdfP70Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C1BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170253349637.28869.8968084343432314060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c21af2e9fa4374a5c69d4fe3d212a135cc2921287cfdccca4ecae54aaad2abc0
Date: Thu, 14 Dec 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702533496
