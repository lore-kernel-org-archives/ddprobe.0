Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B0F1365
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77581C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671579687;
	bh=ECRgL6i8tqgAezsl6sfeYWIHKfL4syJ3on5hPROAe04=;
	h=To:Subject:From:Date:From;
	b=OQ1rNrPeRkEAQHo6C5mPrMOoSfchg9GMmfbigoEeO4z/8uSEkwR/CuVe6t7v2jCQi
	 fIRdxIN+8ctbvbwpWDqVCFbp9nAem0y6+VyI2Gsszm2nUjGAbJ1P/x68RtRNHCXiAr
	 8Uhost8Js7mNcO5q3plXh/rADvhyhwDLW+6fr4so4RIPC8UsrzLMObxWpOBYhMeyd2
	 HM/idLbK44O9jn91bDtyoTmIstlKA61w0lCDdsH5vJ4ywW4YI1fGf2ouxSc9MTVfZC
	 u+pVEg1TDE1MSvrrY62nD60VGLBHxCnO3XjYspPfexaiYUGOLrFS74KAiXt7i7OCv7
	 2VYtNvPsFtEbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6013AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157968738.19637.9049267949763088217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae6338d1502965a2c80a16d557d0229344c2e6ea8f873f65cd445ecc1495d92
Date: Tue, 20 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671579687
