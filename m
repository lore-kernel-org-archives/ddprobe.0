Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7B38F6B
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81A88C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672782087;
	bh=lT8OmhyxBzRwRt4kYtGiltJNrqfmbNL+tiiaVxDjV3Q=;
	h=To:Subject:From:Date:From;
	b=Z9LPGr4egWbQnWszlzqM1FUgQLLHwx/jTPuIgDv0aerj4yT2BlcZ4kdmEuyDJb57U
	 9qx/HIGcwpxCQ0YNzkHqfChPUf4Ku8WifntS+S6G2h4L4v6v4bRLox2tQqPrPTx2St
	 be1R4g0ndtuA9tnUqYFLxkbifDS80BNYOnJRrdl/JAUbFZ3YtaLSWrl8AVfxKV38wI
	 HcA7P07bx0PrMdP1aUpw1q3nodf3Rdy7sbVarR9bjnzkmTJF8RWBS5Lk9Cnjr6uhq3
	 LGP49B3EIBDMKJ+gUG9ShKmdUDZBwtUnBJ2gXSfdtDJZNpCVltzZGPo2uITP4H/NFQ
	 LPk4F4jPQymYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E29C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278208738.28858.17516133821005273929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e01bfcf91d7462dca3407567b274e2f048f17f3f41bd99dd67a2fda520f7a70
Date: Tue, 03 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672782087
