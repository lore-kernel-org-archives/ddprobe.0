Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623B522D44
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 21:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD776C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686606905;
	bh=4CploFmUrs6UOV6ZZKu5bc12P5R3/UjDVT5RqA+axPw=;
	h=To:Subject:From:Date:From;
	b=Pq+QbPh0g+kZaoDPknel6akZcQnLZ2ppTQJABh1riGfpSJGE/42jkJlDBnFZNgRby
	 DsSGK0W5iHGYMx3N3gnnnQukWYSLXQ6crEoJCiymKUKR94zC1c/IGwNJZe1O0EbWBC
	 HLVaV+RrsDscovybHjSKVp7hrlgamhrpscTWRYMOzdqDhjGpknRcB8++zPMc8aS7y4
	 D/O8aSa//hLtA2UmDqqClk5zrA0WYc2DO/Y0Kir+lXgnGcgs3Nb9TaZ8B7TrUWBI8z
	 qZsZbFJaWbVIxw3exsV8RscaU62WvRfxJ7t6iBJ17X9s0+urckA9QJ/58EXztqxgmn
	 hLQO1nj4DDxHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC473C7EE43
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 21:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168660690575.31782.7257801206738238988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110c7fb659db48600f8fdb271cee62625dd100ac84151358fb23768b75b75bb3
Date: Mon, 12 Jun 2023 21:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686606905
