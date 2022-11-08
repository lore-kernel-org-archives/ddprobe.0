Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD62F28EE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2D1C43470
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667913654;
	bh=EltjgAEWZPNpOuzZOCWv6QUtkyGJuEbSrTv75O3tZhE=;
	h=To:Subject:From:Date:From;
	b=KJuTbm9ty/5InKHoZNwRfCUjpV9oHjo2mZ1lStsJbHoy3PKw6/aDOOFcoRqW/xl6z
	 Nk30AYAFA6MzD9UhB8a6h/AyA+HgA2a/9AjzvEuYufJ4dotunCvd33xjSIY6HYu4iU
	 JjOvUPEC+0iVHy9jivDL4OAFghqCgRGK3rCVUWa5QEsOxKT9wFZ7zSCHNGmkzGmZ35
	 KrTUZxiWXivGOvnKAAiOatYOBAwpHoqUVS0PgzydlBX00BRi//7CHzzV1MoOUtVcLc
	 HVA/Kqtg5M9V+kP30VrAtXE71BUc+Q9Bh2DBj6InzwD7qqDvjt1glH9a8AC34k1Z5D
	 L9xI4wID/3Vzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A1FC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791365432.15957.15577296417845103250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51469dca4dbb30825d1da61d8e931bdf0fb5381b0138958339837c8f0ed5452c
Date: Tue, 08 Nov 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667913654
