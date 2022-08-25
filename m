Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AA71FA7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 800E5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661415652;
	bh=NwtzNG2IpwxSsZg7VxNhrBrsBvLPNHfXpFFd741LaUE=;
	h=To:Subject:From:Date:From;
	b=k/n1473WBaphZyquVeRWOiAx0DQ3idBV+ePFOSsd+lBesAKXyFJhYKAhvhVYu6C+O
	 AcHE3gWUxVYbPd4niXaHVw16oFNfrlmER2xgVOTPUEUWGzpNLWFqyOgJlE/uLdDm7N
	 uruHaoTSUjKtO1MJFfLIc/6RWtKuaW8rGkOgPZCB7+MtKRMGEsspo0DjBNm7zw8xBq
	 iyS04PUVueYRyy3eFtLinOfJ4DA0qKKI/uL06lna85GnAuJ+pIFssrXlVR8o+4aOXl
	 6vOJzMO0o/jWeEJihtciTmG3JqMCho8tFu8kWmNPiyoezVdMkKzWh82gxKsm/i770V
	 jWBQDM0/2EZ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670DEC04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 08:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141565238.711.11649324402646926322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47534b8cb01b158a100bc2e708533d9f2d92330f73696fc6aaf7c6ba7b45a657
Date: Thu, 25 Aug 2022 08:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661415652
