Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80201113
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CB62C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667616054;
	bh=RgUO9lPxqr322UxWoTZb+6Zk2uiEUjmnExiv7HjUvYo=;
	h=To:Subject:From:Date:From;
	b=Ss5U+riG2eJUbVz3QBDWKW0V/vgz9rysgWBBJFc9Mmu7LqFbwRjXYJ49TKItb6Gk+
	 een34/iGeW+sqoshzGrxxr9RVgd/4kwPaOnbdes3MllYx6bjSbN0MKi8O4+F1oUKBx
	 1nWMmDWnQ7PgdxL5gFgWtgGX1fTqFpmPsFgjV9OWn+4M65LTBP18ebBBKt2Uah91cB
	 w53F7NLiV9m8y2Jpqk+VdUb1/IkYwNFqU9M5nqeJSFhFtFPcMTiCwfuK/dH5tIfGms
	 JkIGK9eFSA6PmX3q6A++ptI4JleJ7/1gK6byZc7jiVvnKsxev1dXX3GUOr1nGjbB/Y
	 7Qekm1Pici/aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74FAAC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166761605446.18951.4490465340722477035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2d0e15abe140bd4b619fe9ab0491bfbd241cfa530f3dd33029730dc6ea0f3e
Date: Sat, 05 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667616054
