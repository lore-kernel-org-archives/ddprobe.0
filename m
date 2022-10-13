Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB40D2C9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EE7C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665665453;
	bh=RnU2n7LSZicxXOlstdnnJvpQyTF9ilZDmo4ny8n+Xoc=;
	h=To:Subject:From:Date:From;
	b=T0zo7OiwhYjlKnbx+oKssOhYUf4lCYOwmXoOJJ+8KPXfmbxRpKBqH7nqUicqS6ZyX
	 udxQN+6Kc29Be0k5dhw058D/wOMFzI3OCURVC1pTEZx/Fdsx7YWe6FdTw6fCSv/TSO
	 D0ZSetijzsPTrdPEBrK4nrt2gCbc+UStN9dmsePOpJUKFkiFIR54qpPLKQ5UKlihYh
	 4FKBjtmU5sHY/5/xKqUIJhWMDd9C7eRF4wxW3IUzGa0qVnq6hz3AbV+X9O7djpDG3w
	 GTcZUmBk312+miAFJ/s4qkcnDSJs7Sll68HuF7whwoxdp7v0ml0zolWlGFW1sMm3ou
	 1LXR4U/nbG0Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 586A6C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166566545334.12595.4477703852280273679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e4e7bb23bcff7a2802e6c7c8cb5401a1a2d29ac0c543c30389413cb1b4f3ecb
Date: Thu, 13 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665665453
