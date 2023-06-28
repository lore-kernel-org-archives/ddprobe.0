Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6A946A8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9F56C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687937588;
	bh=0KboI4S5cQ1HM83EeFgEZFujdcvlDQL4e+eGiRQCplw=;
	h=To:Subject:From:Date:From;
	b=Ot8CuDtPz+wdd8Uc+vYrZCprsSlS8yt/9U9cnHoNXHQ/3aMO0DMX46+ZGj6c23FPY
	 rVB6iPdZ3DqQgCFg5OVrvSaqMblkw24WD9FYdNlJ4NYfGI70lpHvPzvv6MZH2mO0eH
	 +MDEmsrhcqkwwYgMrC5k0xD0+S3usDI2C9Zr6xbeWB6OoXPAbyV1itQ3XQxoRydFbZ
	 pq/VW6+u9wI1vp7avPTD2xXOsJaWt0uv/CZ2IgPv1biM+qZnDiC/Ofl6UL6Mti8qj4
	 l7bdM0kw+KjsNDUwGbh6JrQDVpJtqJc2esIrbaIsBaXmEnMFPsd+F2ulE2ZAxL3tmC
	 G/75lSvDqrsMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93D7EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793758881.1821.13107726100644377071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1548a0e47b9052e1791424596f146aaae60645dfa9610b9df735bd1ac0e964ec
Date: Wed, 28 Jun 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687937588
