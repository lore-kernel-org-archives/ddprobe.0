Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57AD23A3
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BBDBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670917287;
	bh=EOXRwCawrbXh3TmG+yX4Nod0nW1SzUwo7Q0N5GMllqQ=;
	h=To:Subject:From:Date:From;
	b=BFC1s2fCM9xRL3zeMX6OSjbM5xshLRoTsrLT7sl0W39KhTY22zvIa10MesdcSI0o/
	 32aLRaRMxKhJkyVKsd2yPLc7wLWJx0QY/1kfV13KzDAfcqa+jW1FJ75VxcAi4PlWdZ
	 1GV5cfmMg5lznjdGtxMXM+2UeA+DcYShtNfupfzdi9Cx2KOGcTrfLMfRy6l/bBJWSo
	 LS9yUip0Udf77mdTV0vwCY6pTzrjUFUkyN6Wvh9zpQ3O4cOgoJFsTdB1vSMwSO0trF
	 3vBHQgEeuei9KYqdc9GCqnaMV2Dp9RrHfWc6OM8UPUneYyFzvtMdGAkEWbdvY1jkod
	 kliv39pAQ/8Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70EA2C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167091728741.15210.14916168870066831313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad43bc61c6378c10898894791ab8c3d38ea01d99d8bfb4d70816aca027daec5
Date: Tue, 13 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670917287
