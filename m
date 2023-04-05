Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A612108
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 12:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3BE8C433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 12:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680697026;
	bh=lytUORs+SjvSr9P215hMZuPISlr6JLVtdoV30xbiNI0=;
	h=To:Subject:From:Date:From;
	b=HhxtRrOkOcAaGUWyQ/LMbKfPCWWJAMP/LsBXVc1qyj0kZsZB4MlxWec9mkSP+6LB3
	 Eob1s19aoK/SUedxtgVj0MDtvwXEO/NPBMnKYQwNKhcVdtnSDmSq8yog8U4FaS3OYx
	 q6iXdcvft5Y4jiTkwLSia903Ql2w6q8cd2NLoqrw3be/BBlwUIN3YISfl0V37jjaAW
	 QqjCKVnWs4JS77gBTuBP8Ra2abEm9zBdgbvyz1wvsu3N2qETmzfTg11UbVrH1gDWpx
	 3ZrKX2f0du7UGxxpK4TFNrBXx4pSFfxqq8pAvxCP/Qi5mjJp+JwOMImuORP+ZYlgj2
	 HMR79cxwQpwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5879C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 12:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168069702585.5688.9246958584457902676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb26d9933333aaf559d029bdd04288d7537b6109f20e881394809686a8b0dc6
Date: Wed, 05 Apr 2023 12:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680697025
