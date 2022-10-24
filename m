Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD044636
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65784C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666584653;
	bh=hz08RFvQSKF9t+u1+GPDwqUjBAz9OeBMCYIrS++3QGI=;
	h=To:Subject:From:Date:From;
	b=jwKrr28fGvbP2zPSIfRdBImwDBYA2TTMNGri25f4/PB37bLdUpOTIXq+h60pUkB+Z
	 434efbPoFC7NE+nwI94/FezRGP6Pz9IIrb1Y4KVLIk/Tp5BUu5fXqT7Cp9s6ijrQgG
	 2ffKFGwWf3jdinK4Jz4bzObTaT5zizzvnPIhKhdPQBcYeN9ovJaWlysDf5J2YoKmYW
	 6TTn6ltq0XSb83X9nnlUuuyr+cTSRpS0c6lkWyFv6ItJ7Nfl9cYSALpV/d18ykGDN0
	 HBhcs/qy4w7XDZ9H2dwX9QO70vZ006xGp8WBFgJEDsytJjqvRwnlIjqEzXNAnPgPai
	 P9nh4eOgJvAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD0EC38A2D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166658465332.12254.15321419181982151105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca09b4e4859d4042d1d6f568a24d26106eccbb65de1ebc7c3c96e77838c7aff4
Date: Mon, 24 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666584653
