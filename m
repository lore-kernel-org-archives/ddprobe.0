Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA75A5D
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C29EC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665063653;
	bh=UlrL/UcVCaDtTGUu477qRz2Ol4bd8MjppcE+1UU9cfo=;
	h=To:Subject:From:Date:From;
	b=oufQ/gNj1zSNVOMnOLGM9bzCwrmOccV75B++sMpBi3GpwGaqLrY5gvYHe6kZzkpdE
	 Hxjzz4l9WeIvJ/ynmfCi5nd0xhS1rZxGuF8fGLsftY9MuiE06r6rkMJj0BIA+mq+Rl
	 NapuWN0ErksFRkPlb+ebk6t5ipPEVa/PAgt0s/pu7+Df7KTzEdKErNWqz8sxCGYZNV
	 3zp5EmjLZSpzsX7MaDOcWmEuem/QqC3sEdEzv+caQ3Fg4SyuhwmI2MYJE/CdJHnCVT
	 HDTk8r0m4eGqwm2h2y3hgcVPLQCMlHQEimomVDxO23548BOB9gkP7SQ+YFd0/W8nH/
	 4peOpSjYSqEAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56906C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166506365334.15689.2804329506053660653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a4e1efd18df813c09d0c1cf6114d63702f872c95fd7a7a2859d86aea960159
Date: Thu, 06 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665063653
