Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F369184
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC232C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679444885;
	bh=vTMH0curWZXYn48XtL0lgZrU52Y3GfNXUXnTA7mMQXM=;
	h=To:Subject:From:Date:From;
	b=FujG+IDiOLKuGX4NqZXOFvvpeWupdrzaqfRygkiCDGf3KMjeEHm6GIvA0Bs5WU1TG
	 rpalHmSu6nIPMHAfRkXUQ9Yw8ZZYbb0hThAUoVBJ5NBGngecyAp4zgwegoLJ8j/0Lv
	 qWqqANqqO7OFuLlYC3bTw75R248MxqC0VThM5Cuj/0/8BmC+e5Z3aUchYnBMQV8+5t
	 4sCF8xuCqUGLLe9lqj+yl1xn22OznMkIJTB48yElRk6fWPIfl8orGruDyKaBzrAtXf
	 jW3sDcCWpBZhK93o44cU064HSnAhYjPmbPnKax3+8ltEq+0cpOPZYoZPq6vKaE68eh
	 klYEE3LQN10pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF732C6FD20
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167944488577.30577.18014323518038335311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674792d4231527468658487e31e4ad72f203ae9236c3af433817a9e7a981c258
Date: Wed, 22 Mar 2023 00:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679444885
