Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F7F7E7
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 16:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF68C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 16:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675355766;
	bh=N+NYQD0cpLn71iOhkhca4yv11hVd0MEdImRM/CiLpOI=;
	h=To:Subject:From:Date:From;
	b=dwNrwk0V1MrVKNi+oMal2LtlZfM6Nnzzes18aBpbAyqmSN+2Utrng2++bnnIAeKBM
	 aMxuONyunAEKnjI/jArU9MPaQ1lydKTRF/IYvpKYtdFVFo4NOupBKQCOlY5kzelo8M
	 Uma4f5d1aEmYb9u7g7kGj/Sl9Wrs0PptPwcVr4Vf/Y+RPXb9A7k185UPhji8GZwjzK
	 I+N8J19p53LHd61M2NwqqUCBlq+5yverM9F77PctlxPpNTQemNwukoMz2e0YxL1JN4
	 yPrfmT/TDCWffZRmPyi1qJyvmxWZxZPRv820pHksLbP3yE7Yyn2OWCmjw9uS2mPk6I
	 3PuRHWFXlhUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF33C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 16:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167535576583.2846.898757613470828207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd5ab3bc76cff9b1c5405bee5bdcf3d0ce0f524f59ba0bbe3b9414c77231de5
Date: Thu, 02 Feb 2023 16:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675355765
