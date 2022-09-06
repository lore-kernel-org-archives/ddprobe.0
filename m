Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8E486E2
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83AEBC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662490853;
	bh=ThKjZ4G0HYefRj1r25Med6h2dqFLVekm2DpHtP6wdLg=;
	h=To:Subject:From:Date:From;
	b=Z+ChiDzl2QXoTsJM2UHwGYHjHxqlFERsYvNV9qcZsyzRIyOEN92xoGBfyrrSk9awS
	 cY0ef8E6zykwnb9XeRqT5iCDR3qsrcYRNBGEnF6VvsEgiiHhuX/G0tsm507xrGlNN6
	 6KA+4UxFhVAr0R1FVgpgXBr+UilkL/nvm0XLkXNEvLg3qa4MWhvhDuRW4XcawfjE8I
	 TgakZ9qV2lQwB6sROBVcBNTbrGmbDngT/TQv/+H3on2Nuw9dUOguV0BWlscVcTvzD6
	 dk6ZA2xN9y7ekSv/AWEJfrSsTbb4umxH3NQ8q3xSRbVfP9zBS/D3QgOUivSO/EZXWz
	 z9bfuZJNdWk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6328EECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166249085339.9238.5213932270348965953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a2e27138c573f765e1684c396b0a62924e207c9e5bc279ae978a3291c1ff16
Date: Tue, 06 Sep 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662490853
