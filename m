Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93A17E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 966E0C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672459287;
	bh=RF7xVLF+GBSivBQ1pU2CcF5tRVe5ySFMrv9oF9KnJWg=;
	h=To:Subject:From:Date:From;
	b=aegwlGwrHxbQyzl+ZRpLJQGJS6mOv/4xfmBQVEcasfsEdVUT1+vFEGS5GhlmpnfIX
	 e6P9s0Fd6kF9r82wsnkt1Q06P3Su/6euKDY4hLPD7aTPysi8qaZv/gLSVGRzGxCB3I
	 BAg7ffXXpbbFD+JTQH15zbxTPSOe8o2wKy9Cg1mVytS6OttRnZUpjnZ67myDr134Z0
	 dX29oO9EfqlMXm4a3XCEjYMvE/YgPa5Qtg/BnMLHpCTYugtaYZuD957qvEXRVuyvXe
	 vpwdLaJeF5j/59CylVnCjL0zx1ar/iSL9v6pSl/UGerqiL2UytT34GSkh7DXoJcHP5
	 YV2JqeK/fOJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 776F3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245928743.18843.17650004097236940092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e86ab0523615bb6f7e0eba0868cfdb239246bfd9c33557b40e2130e7a73dd97
Date: Sat, 31 Dec 2022 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672459287
