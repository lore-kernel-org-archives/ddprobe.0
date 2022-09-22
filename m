Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA6C1FBA
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66154C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663818053;
	bh=kAzgCTIRjcZW4pGPOyEP9X5scApmnW5GeVeTmQ4+zxY=;
	h=To:Subject:From:Date:From;
	b=Kh3xCWIJUdVf227qBiJvwQkhET8sBdy6LdJp9fn5zlVg9sAwKOb+OXZQnBJRgISzz
	 K6nAe8Wqhu3Bs18goB5LZCupSleMBMFwKTalO3GBWCag8cM6nnhvJcx2XSzo4jl8pI
	 Nmj9GB13lokSKecYyLBT33vepIQ04Rz1/QgnArOGARu5rc4G5vtrGdT+fiEnRLpaNt
	 32Xgkb2EAhUsndFsQUU1nm/s9IV+ZxZXz2eX3HMK2feW+p+FZpWeGQKJKzEIznAbS6
	 Ga2IxkRQMsVBW6P/Y+LvGVmi3MM5wAezxgQadzzTmUnwz4k3uNhLoyzJjjBofl5jHz
	 NtmYhbMCThv5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51351C54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166381805332.10417.16934619445100260452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d046cc4e7479dad97a46115fa554b564a3b79cb3dcf6d41199a972a2ff8e1dae
Date: Thu, 22 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663818053
