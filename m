Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32CA23AA
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71DD9C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667799654;
	bh=Rc7CDBiiIw8kIffHvLgv+Z/UEu5VhPl340mUIRc7S4Y=;
	h=To:Subject:From:Date:From;
	b=Sx/qiDyv63atPUMY2mZGBW0DWS8Zt8NC2hokAdomCaK4+Nybi5kkngdLX4irLn2Db
	 kZ5dkQjg9CiJc/TIiOQGfT+TzldppHID6v3eReZTIyKZ2uoOAt6bEIV6EyOCRb+VZG
	 N7a6DBxedE2KRK+7sKbjdxPQYGV2qiiHyDJIWIjuotrBf+nw/9ZoQblivjAGB5/IHB
	 0fpZzYC1PNHM1OdWai7dVGG8AaftAVs8Cd9EY5WjPLi7TRd9tpmg+LBjou0+ORvFnq
	 4gD5q5/yIp1Mp0VHHkEpoP57pwrGkcCaJIqg46kEAQY4/1u5gWcfFpC9LZ2infvOxN
	 rQEVLm4ciz7GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537F5C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166779965433.28074.2848289548460574061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 060aae7634124f85405d8a8bd67acd0a5d0f82b78ca8dae0e58820f97e941375
Date: Mon, 07 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667799654
