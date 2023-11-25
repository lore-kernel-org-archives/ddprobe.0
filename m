Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F2CF9EA
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tFn/qiSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFC9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700941096;
	bh=IBEinHcN4Iq3iDUmQrgJmUoGAU6N7yQPy10o5tBLgPI=;
	h=To:Subject:From:Date:From;
	b=tFn/qiStGQ+6As3uZDYWY5Gg1fBD9QeMqHpx7F2851Bc4kM0tBxBcEYjPrzxG3j4w
	 ovoZslFR0aQJuxhc0Eh+Hi25bvbL/7AUz6lBQZ0phM7reqVr5m/vPGvAL/Fxf+O3px
	 wqr4aZr81eZ6lIdgPeBgl2bPwzUTjMtGRrLkryX26dQz29wGQ1TLN/C7ONQOwEcUST
	 SkfRCjb5Ksd4YkYu8Z4iScHE+wtIxhCf8pvnEyrfN/j5ppkP3hLKOezh9niDVKbVZZ
	 7s162fPQpx4TeY+/LDk1DnzCq2euDTBIIVnl6HeYTjbhkTptUTsM2d7JHYoBMlsJSm
	 i+w5Q0j3G9hLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CEFC4167B
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170094109640.12210.8188256708296792925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c8924d8f1d016352552d64b3b7c2dbff6e893be2a44da0d309c3713fba0667
Date: Sat, 25 Nov 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700941096
