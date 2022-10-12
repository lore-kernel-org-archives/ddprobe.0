Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E41D5191
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D91C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665538253;
	bh=38oRWERhqUnRTR6YRvMjNfYmoptvI1yl8Pq0YL6KzrY=;
	h=To:Subject:From:Date:From;
	b=OArTzizqSvyC57yqr+24LC8MSl57abiIjMKI9S6vOCZnszCB4ADEvCKFNaSpPBa6c
	 FwpGm14lCpXwlR0cU/XOYspvRXkTZSO4yqk+t2IueuuXT2YgwXQLFLW1nOEE7bUicg
	 /DZ8ODoshJ4lJ80KMcI8+kbyG4Q4DbTmebpCcJyV/wLD8v5MOePOwgLzfF6msrbGiw
	 oEJ9o1PH4jmwzU4+8c0cS5Bpp1ckQ7kIoqQEfqoUZCZR0RvNNo44kkAEcw1ZyCJING
	 qTVQs8peKmbuFdasKnHndVqzoBn5RepN1rMsHyTRFIvud+Rfmfk3TE79743534omuI
	 pFGpne1ne1RYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DFAC4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553825337.28570.8398543717691723684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37bc5082df7ad6b51c5204b47611bde9dd9169dc5551c6cb7c070d899a5c7e4
Date: Wed, 12 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665538253
