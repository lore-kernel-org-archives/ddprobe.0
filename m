Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0483553815
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBP+Iruh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC3FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702378096;
	bh=JxgiL/yQ7joerWgzfFdstYgY8haVfaIUMbEkgaPQ4Rk=;
	h=To:Subject:From:Date:From;
	b=jBP+IruhVdbN5X7O6uVSXThSrN9hDw7OAomGr0MCQa7/78tGgFNBINPRvcUz2K71L
	 W7YiLD5LPiKOTuRj/X4NAVzEJVaS/ZOVTxkr8ZWdDLn9igxC8QuAgodH1qNniU3z9J
	 bbrPfUOeUuwfEqHcKbbgI/nzmduu5k2pn/4TSCDQprvs2KGBoikikQKHCPvViEZNTN
	 Kmd9P0DEXt3agY/f+jjjoN+CI402/Rn5LO0XP4o66PU4t4ZB5hFepbxTN6SDK4vd6x
	 vcpQxJjjhnsvEHTJ68bMlDX5ijq5ajgEF6HGbdifiQZHCJyof+akM43IM52egML/QC
	 nMhaewSvPttvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFB6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170237809637.25828.2049700624030201357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a73ef460fb82f78477851e148b8ab3e5acb84db0e26ffaf0577f1335ad3ba9
Date: Tue, 12 Dec 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702378096
