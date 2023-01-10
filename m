Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9851FD3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81BFFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673331087;
	bh=GJpNJuXW82JWJcKqEpq4b32nw17GKcWhj6Jy+2YFljs=;
	h=To:Subject:From:Date:From;
	b=JZMTIbmgyuZlUsxfGAMIo/TywlZz3w6XbgP+QzYpD4iTpRTR2pmdv65G7+Nb5pR2o
	 jOMK0F/S5LTyQevMN1rmoLMTW5PlANu9L+OANyNHJl5U3TvS4sjUxWS3Zc8gJCHqcy
	 hmDT94pbEKQebKDZtsmSU5Hqm5+k+UA0oy6xV8xpRZeR9oxX7H6Up57dhLLgAtYlsx
	 BK68bFCjS8IigzJAfmG95nznAujfhbVnXrCvC9XTTrJdQ5PAnWUcnktIzc5X6AP3U5
	 Sjiw1QFyaJht3QSvVBfkHjaad5O9Xf9h/tbCDxgmjRmnpSvFbs7NRTZIHfoGCC4YZZ
	 MJXYgoPcp4WiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65ABAC46467
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167333108740.4409.8167434161043266774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156b5f6614a59152dae8f11f8de3d2cfea7afbd6fbd4cb39a3096887d3a59abe
Date: Tue, 10 Jan 2023 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673331087
