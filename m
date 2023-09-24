Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D97963F
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 11:15:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA56EC433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 11:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695554108;
	bh=2Qme2+ekGWPehu7+SvvGZdnppMfkhcpP3ccRVb0suvw=;
	h=To:Subject:From:Date:From;
	b=Uy95PYw6z89UuGCLsYcfhLsIfoAO6m8ztGoMa+gPEEMVNfSQevUPi2uRct2tgcBi1
	 yL8Gye6TvfAQa9tKBWxWsc/N4K0uf+ClFo08KxwRKE4Ldqtf/9MoC1w7FYnABvUcfU
	 Z6NWXG3fPn0CDH5tXxY+FL5SCi+CzrM+AIN9lWv7zBgSL2gdXtzJmd1klKfhjLHIo/
	 NV7dW3miqakopoaN8jMhmf+0oLrH3Es3zNmZbCNHoERcxsFaMJM4GzY0FOfXPpB48t
	 UrU2M4UARvzNhIvCLns/xTyP9Ok41XDrv7NPk5v4+wz7VqMdqlAmlxaGnET2betopy
	 TLgSf1pmVLqAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF41CE7A88
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 11:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169555410869.31537.12486331275071719471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726ee55fb61d58c499bbe0cc106ef79dbdb123ce92dd62b60542e56ccac31bc8
Date: Sun, 24 Sep 2023 11:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695554108
