Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF99803
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 02:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C783FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 02:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694573048;
	bh=y6ifAedARvriAr0yCj3FySbFsebmLfU8zkBkyvOEA8I=;
	h=To:Subject:From:Date:From;
	b=YU3QtXpJBWKPejLejaVSqjT4RTNZOonOZXt0mwN4WFOmsP/k4NN1nmlx2Ku5Fnz0i
	 97StU0WeEAXwhXKh/b5r25giTn0w0sZVxuEqQUPQpdz1pvfNZ7PjaAtBb53qkYzVZv
	 x3YbJyP36UL9sLZDliWdJyZB3mTkLWHVBPg84Hp6zqrkDk9M0c3v+hHy4nWy2DzdJr
	 YZ9a3893h/LBD7Z65GYPerxPB1xd5dx6wyIWeVeJVvzJDgk/9wbNpJRJRc/CjB120S
	 E0ia1Zj9IgD5QRRM6KAbdWdLBmoqMkyxxx+QypM2QfPzryaRDR/bPAvK1s8MmQQCL1
	 Jpy8+bZsAYgfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB7EE7FF4
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 02:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169457304868.21688.11822523666353848339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681695004e0d96657c48314f3499c01253eba51e165ef7db11a8fb39e2d8cc43
Date: Wed, 13 Sep 2023 02:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694573048
