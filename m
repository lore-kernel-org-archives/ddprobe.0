Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95B579CE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D73C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673616687;
	bh=KHD8KGVqRJh9ZgEt/r5JB2KK0VpNzIztEKpU908IdTE=;
	h=To:Subject:From:Date:From;
	b=sxh4YvuqzgcOYDOFirYE4nZIbnuaNE7IKRyxZv3WxjyAg3SLy9LYE6F9k3V9PNL/Z
	 fNZBpm/+kIkfrDRE9V53Q6zoP/1tLI4l5MBxmNHNPIT8iE0hPYPps8zywWVHAwr2Rk
	 HTY0o8ezpBkQGqStuKCcUpNAdNhFI7xiDyYuzlEC/H08PClhpJ6KiV83kA6XxLLlE/
	 Ui5mCrTox+zQxhheKGT3lzfE+QpzYltfKvc6ANJPOvjoNGjym0i4+oP/BgMrMjogaZ
	 9rTkP38GjPZSkfi5oC51T1GlJmuoQqjzLdqGo/KPWeiCLwFDZMjtrN+uhv9/437qOG
	 SQ4yIFqw6TI0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635D9C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361668738.2068.15078725186836306555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb98d2c1fcf735adcbf99cc5ed90bd79ac660a0adbee72cac5d2998f5db3376
Date: Fri, 13 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673616687
