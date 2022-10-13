Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C838220F8
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFB2C433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665645053;
	bh=8SpcI+RbsrC961XnKywWkA1n/wLdtJZINj8sqVHahDI=;
	h=To:Subject:From:Date:From;
	b=dLCp9JrPhipTGrxatAeWmd1lprkwD5PdGJJ56gkzjMH2ciA5SyumxWg9oXtBzFVq4
	 Ltw3dZ+OK+IeyFn5o7hWVLIi+8f+rWjuU/Mb6YQlIIFIW++EXLK9p1sBBlee0TvGfE
	 h2H0VMyCeoz52wDD+1utnmLO4bUYjOtJkmNFgQiHJSkMar1Pl62JJ5AlCWGRh81mTy
	 VMhwSlyWcD1IjdETy+6d49urp6JWPUodzU8evm2pNhORFCOWkDTkkJFVEbyBttKqvs
	 j99354pilnKuyopUna4J0/l0vrsrO43XP1stgLDVhlf9Dw21lRgDq1pRTp3R4uaLF0
	 CBwUbHAun3YGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536F0C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166564505333.25088.722568609857413498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b9aa2f075df0066502f550d5690e3af21110ec6ba4cfca59c269f8a38d5120
Date: Thu, 13 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665645053
