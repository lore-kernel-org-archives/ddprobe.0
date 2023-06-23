Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C0CA3B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 05:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA3EC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 05:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687498988;
	bh=HYWw9UFF79iZREjyPFuDbD0m7NQ1j2wKCLLkjDYvHDY=;
	h=To:Subject:From:Date:From;
	b=vFAmwr072y4dEaVK+odNdr9T9UFsW2JNyPc7VuoEs8m0erN0PjK3imDwIqUODSl2l
	 pPcrsd3JGPUn9gjqojr35ItV8BRwIfUk+A0JXPpActwIZJPofxo5qXGYe6H7gtDFkM
	 le4zGAtqDK6mwej6Gmctwq+Vy44vPlFP3Kn9UtRjcKOpgQrJx7UPyOMBeGcVnPUy/m
	 H+p3Li7ULpOvHWI07TngPi999+vRGNOkhTpdq9Lj6WfCziYdWAwjSaJtNbJbP3pQeK
	 hDssBdVPLemWksnFbv4TM0UxUVc/B0pWC24IiR6G3TJZzvNXQVuXamJg/B2ouf/QOQ
	 sencDn4GpC9UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42EEEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 05:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168749898866.7558.11383904768145619722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db5fdc67cdfa86a56814110919a638509b62534903473686ceb2b166d22ae16c
Date: Fri, 23 Jun 2023 05:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687498988
