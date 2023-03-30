Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2921C1105
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 01:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49CBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 01:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680140945;
	bh=myMTJdlHuoGvejHYOt5ZBgJVOtHB8gs12Xch0/SP+HE=;
	h=To:Subject:From:Date:From;
	b=SiMORA+XaO1BUwp9H/JOJ9A/WmzJwDTnLoG2gBMLULeEl+ZB/Ap5gt5olIJQQe5lY
	 lK/PSiuRYYK/tE7s7XV1aWZXnruQDhs7soTnyu05Kd7svJYwCcJzsUKQwS/W7RVujm
	 q4XnYwns10HNY7TupeuIKzWjrRrNup4MZR5Zquy6OdD++7J1+rOQfkAYJs7GSqQcXK
	 xXgMLc5oFxo26RIymoLHA1DGradwKWSiMKQNo6XNy/omJ+YrW9MYKrnesUFgs0rB7M
	 kTdxeiarHL48/BgaN9+rQdagJuQCnDW0SOh5ju3M8hE/g3DhXgqGoZ/S53z/hpomKu
	 vLN08A0anUqoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B993AC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 01:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168014094574.31617.3295040963675127375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c520672abb26075058f7a5038aa7a9af625be52c849e01e481792ce9d2b954a7
Date: Thu, 30 Mar 2023 01:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680140945
