Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E62C2C9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 11:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BD5C433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 11:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681387025;
	bh=jSop2RMI+Q6cmDobIIzvzkWN5BdUJFTCB9EJpWW8H38=;
	h=To:Subject:From:Date:From;
	b=BWP9YHzMIexme2ZKGB1eFs22KIH0HPAZEe6X4F+H2L8aHVyXTGPk7NVW+81+Pgj4e
	 1i91YglIUH8tTNddSarL+0PWISlIIkY3NraZO1ZFDLooM0wGUP6R2zrIGNZxFYzKCu
	 P9gzneJFB6/ZmD1a75elTK/ObxoWoxn9miXZVBdym/cc94TvD/sYi60d+AXvRNSgTS
	 wpJQrs2YURXYGJtkR9oeMZgPO0vjvQh9wPQ2SO61wX+zojFDjYlJEN3QGm6iE1c8n/
	 XlJLP9rephBW8xH9i7xnB+cKuInjr6WYmOE48CreNrfn+cv2Ybv2LiXZQTim0dbFvc
	 1i9VI4qF923yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCCCBC77B6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 11:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168138702583.8975.3569674879650538321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b513a58d0f1d56e84f13850e03d82a909c3720420b94e5ec814311bb8c8b15a0
Date: Thu, 13 Apr 2023 11:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681387025
