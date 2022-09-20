Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68C81115
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A269C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663692053;
	bh=ZxNejuSR2Lz+ACIFEHmRckBz8af231Us+8vB6eIwamU=;
	h=To:Subject:From:Date:From;
	b=DXNrAccXnY2JYSay4hcG1goXcooKZTeIaxgeGFTq2CVwrmzO1F8YWdETzFWlPKb7A
	 d3csGJ8LDQckkMbm4Frud3FyGYJ7mu0rEUQQx0TLkB5w3rdyw69jEC1hrhJ8Bnz0rY
	 eEt7TnOw4pDtVJH30lowOSkRR0dUgZDLi1xuN3z1WqIRNt2ppjSNx4InDVk0Eh1wH8
	 Fjgmrcus0k0zhizuXNckjppDnT4ElOjoYZqP+eMpUH0xKTKuOABmnVHDaH0x3g/dzI
	 2wTixxjQHcR9gru3Dbf+xQ3ZNFw9e6tZQPRErha0sz000klUJhx1cJkn58iffu8Qkx
	 hlDZKO5FU1XCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54216ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369205333.1678.6090163702145521094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9480d2884d930c0284f4b14c93e7b7c1e8d0a2159705124ae5725f57f178819d
Date: Tue, 20 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663692053
