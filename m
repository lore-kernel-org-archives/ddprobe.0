Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBA717FA
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C42EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664037653;
	bh=S0/qjUqPBcpFITbWdsk9dksAxD0mTfFyF4JGlDcZR+Y=;
	h=To:Subject:From:Date:From;
	b=OcM7Lo9gSESHwSEefJ7aknXDnflK7IGTx9INRUTDmuy/eaJ5fEllHAoJqr7lB9jVi
	 EgwDWbJ/AYdse93J1uCH0FguOiQBe67Tz7UCt7EwUk2jlG36jcVheywN9+EZZDxt3a
	 d7cKsp/lWUHcbU20QN8wjbde5oUiCGrzf3Ib+bP2fz7OfV9G8AYvLmn3Sac/DnT1CB
	 pROzkrfuYthFgkZpgBm/JY6dNLPc08Im2yqTVo9PC4W3FSF5InhTYZCHhbGsGpJI1G
	 3qYBx/T0F5OUwosD7EIBosvnGv144EBfHXpik9P04kGB6V6x8Q34dTQVNc6QSdtoG/
	 BTUcYzV9KnI3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B4EC07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166403765333.1798.5626574176211367259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a23b443e08ebee1daa33788a74092cfa0e5fcc4ab12bbac723be463b1e4e253
Date: Sat, 24 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664037653
