Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A2E1C773
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 19:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD38DC433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 19:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686945548;
	bh=m9GRZd+2JkGISjF9LzouvrO/VlVSRohMFG0Z5cm5XrY=;
	h=To:Subject:From:Date:From;
	b=P0wcCO7cFnV1gGkRaR/jRAPqnitH4uhnNgAHgcQAoVt673zGJH2IsFjHKUfnXYXgr
	 7zke+xn8AjTmIt58S9wrlfg5fUhBtzx6MUKXsEOeq2kSY3zv//kB/86ZmfiEN0Jqx7
	 Lfe69no/MWwngYgu43ysjhg1Xgj1TEwhqcIo+8z0Tj6MWDuM21cbBd/HXOA4otKkhv
	 rQgXW5GyVT3LzvD8ZXKIqQ4WxlDcVHlxyMRsG/eSO+/BnU8qAQmL/fYkYuKPawqvfL
	 Ys7t3DDpUxEdhTx5EeBFBPl6k2Cy3zb8kOgQgr8teHvNnmhN8avI+MWw2dPgm13GVT
	 C7VgEB+7HvjeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EF1EB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 19:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168694554870.5230.16698651867541185304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c269613e1194adc3532a49f490282dd0f032f68073e6b4dd7578235d8c8ab7
Date: Fri, 16 Jun 2023 19:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686945548
