Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606CDAD49
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 15:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08BF4C433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 15:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678203606;
	bh=ieGiJ2ypWiLITKVXd6S12Uf2zatxjkGx5nqbDIvosNY=;
	h=To:Subject:From:Date:From;
	b=Rx7AK30MtIKInij2U+GrYsnQeRJtDfZMGrOpd/t/RW/oznDUnjGmaNH6PFWhONKHj
	 TPC7Yrgx/Bd33zVGZ8yLfywHFZUb+5G/Mhdvx2154s+RDcvcpIxc9dZPZ/628VSlIT
	 mSQsyJgMivYvJN6fQPZzEkhAJRidG05vU23FKfJbWFkhVdXiIEW4IXc34aSJo+r3lX
	 VNka7YsMS4cZ4dvD+l9Z/hyIcYp82jm3R0JlB9ElXz2fHq9/Qw4a7SCgPNuUcUW5Cz
	 RNHRzbAmyqGSti6qdEx+9eqtxWLwbMwyL1P4+fwzsG2Z9jq1kRh22mmO0zsNR5UvX0
	 95g3NYM91Va9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D82CAC678D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 15:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167820360587.25542.8812172502349572498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20cc3bf55e0498ffd7652f165e87724df6ca6125e248278118163ec0762d91cb
Date: Tue, 07 Mar 2023 15:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678203605
