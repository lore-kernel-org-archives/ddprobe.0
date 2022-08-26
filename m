Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71AA4C94
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76684C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661548252;
	bh=PEUAY7JdfDP0pwxJMTTNbYa13YEvGKHulnCFpQ2jg/w=;
	h=To:Subject:From:Date:From;
	b=mFmAkaUZT/8+EwMBgyjyV8O4VI5DptlLrpJBU37PaU6vrFGmkB3ZjMryL28zgJN5q
	 Z8iREkr2pefGRbZwAoXxEutCz1EVLmji10uCsrFC03O+XsSpXao1UzWgd9Yoyd2OQ8
	 pJ/wSZ0X/4cn5fHblCIefOvl5bl6WHpLB/P3gtDn9S3f1cWCL47W9LYnLndAnPREaM
	 ywlRusxprN/x+GqGzVgxz+ym7kKuPBgE0yLlbcqUNrqmvCJ3bygx9rRoy3W9x2mvgS
	 VCFEBAGSLp6b0NdZnEXsUkai5Ebx5rn3KV4t0rXsY9iBADR/TDgJnps0oUWAH5NbeC
	 Wej73kFk+8p5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59A9CECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154825235.11956.17804028970322297279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ea355ccd2bde5668cc65cf30731b7146698802ebbbca7a1b2bd26fea6d4b4a
Date: Fri, 26 Aug 2022 21:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661548252
