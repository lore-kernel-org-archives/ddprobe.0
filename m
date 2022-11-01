Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F10A7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 62822C4314C
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667311854;
	bh=N4SybGXVhdo2VfAqKOMn1xWPbfvhdA3xW9W6zs+k6W8=;
	h=To:Subject:From:Date:From;
	b=KQ6tPskdDXg3KWhxaK3lj9xPY2wz+JhhdPwI9WUM/fervFE3SpyDHivt0FaWDxjmZ
	 pCLjIKud/l9qr227Ku0HfzESMnXeZnBFLymXm8HYDgzt7X7qWjrvK5kA5hz4GCIbUq
	 3/f4pO3iLosPV0Of5siftx/8mJT4o52oo4xODQ40gGWBZZSQjpFf5zlW0+SGd+GboK
	 6sWCnq0ksRcuzP2HSa0q9xUGv/cpFJOIBQmWxy6q6wvtOdzDiuMvKEyIv9q1Ys2VCJ
	 sk05TxDjRbPVk7atoRrwjslcn41phfxz0oKguD/ohigEkJwg9FOy0qz6/n2orRx5VQ
	 PCfSH4OeBLQig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC87C4332F
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166731185431.25172.8531449792990543682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15ddbc546698900bfc1034341fd20f8169fafc98507b572c91e1c32287b0882
Date: Tue, 01 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667311854
